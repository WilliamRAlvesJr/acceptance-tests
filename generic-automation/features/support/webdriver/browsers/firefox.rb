require_relative 'capabilities/options'
require_relative 'capabilities/preferences'
require_relative 'browser_interface'

class FirefoxBrowser < BrowserInterface
  def initialize
    @firefox_options = Selenium::WebDriver::Firefox::Options.new
    @options_builder = OptionsBuilder.new
    @options_builder.build @firefox_options
    @preferences_builder = PreferencesBuilder.new
    @preferences_builder.build @firefox_options
  end

  def get_browser
    Capybara.register_driver :firefox do |app|
      Capybara::Selenium::Driver.new(app, options: @firefox_options,
                                          browser: :firefox, driver_path: @DRIVER_PATH)
    end
    :firefox
  end

  def get_browser_home
    Capybara.register_driver :firefox_home do |app|
      Capybara::Selenium::Driver.new(app, options: @firefox_options,
                                          browser: :selenium_firefox)
    end
    :firefox_home
  end

  def get_browser_headless
    Capybara.register_driver :firefox_headless do |app|
      @options_builder.build_headless(@firefox_options)

      Capybara::Selenium::Driver.new(app, options: @firefox_options,
                                          browser: :firefox, driver_path: @DRIVER_PATH)
    end
    :firefox_headless
  end
end
