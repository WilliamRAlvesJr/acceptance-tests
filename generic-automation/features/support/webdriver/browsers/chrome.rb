require_relative 'capabilities/options'
require_relative 'capabilities/preferences'

class ChromeBrowser
  def initialize
    @chrome_options = Selenium::WebDriver::Chrome::Options.new
    @options_builder = OptionsBuilder.new
    @options_builder.build @chrome_options
    @prefs_builder = PreferencesBuilder.new
    @prefs_builder.build @chrome_options
  end

  def get_chrome
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, options: @chrome_options,
                                          browser: :chrome, driver_path: @DRIVER_PATH)
    end
    :chrome
  end

  def get_chrome_home
    Capybara.register_driver :chrome_home do |app|
      Capybara::Selenium::Driver.new(app, options: @chrome_options,
                                          browser: :seleniumchrome)
    end
    :chrome_home
  end

  def get_chrome_headless
    Capybara.register_driver :chrome_headless do |app|
      @options_builder.build_headless(@chrome_options)

      Capybara::Selenium::Driver.new(app, options: @chrome_options,
                                          browser: :chrome, driver_path: @DRIVER_PATH)
    end
    :chrome_headless
  end
end
