require_relative 'capabilities/options'
require_relative 'capabilities/prefs'

@firefox_options = Selenium::WebDriver::Firefox::Options.new
@firefox_options.add_preference('download.default_directory', @DOWNLOAD_PATH)

# firefox
Capybara.register_driver :firefox do |app|
  
  Capybara::Selenium::Driver.new(app, options: @firefox_options,
    browser: :firefox, driver_path: @DRIVER_PATH)
end

# firefox_home
Capybara.register_driver :firefox_home do |app|
  Capybara::Selenium::Driver.new(app, options: @firefox_options, browser: :firefox)
end

# firefox_headless
Capybara.register_driver :firefox_headless do |app|
  build_headless(@firefox_options)
  
  Capybara::Selenium::Driver.new(app, options: @firefox_options,
    browser: :firefox, driver_path: @DRIVER_PATH)
end
