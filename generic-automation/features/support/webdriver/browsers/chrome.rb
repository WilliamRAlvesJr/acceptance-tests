require_relative 'capabilities/options'
require_relative 'capabilities/prefs'

@chrome_options = Selenium::WebDriver::Chrome::Options.new
build_options @chrome_options
build_prefs @chrome_options

# chrome
Capybara.register_driver :chrome do |app|
  @chrome_options.add_argument('--start-maximized')

  Capybara::Selenium::Driver.new(app, options: @chrome_options, browser: :chrome,
                                      driver_path: @DRIVER_PATH)
end

# chrome_home
Capybara.register_driver :chrome_home do |app|
  @chrome_options.add_argument('--start-maximized')

  Capybara::Selenium::Driver.new(app, options: @chrome_options, browser: :chrome)
end

# chrome_headless
Capybara.register_driver :chrome_headless do |app|
  build_headless(@chrome_options)

  Capybara::Selenium::Driver.new(app, options: @chrome_options,
                                      browser: :chrome, driver_path: @DRIVER_PATH)
end
