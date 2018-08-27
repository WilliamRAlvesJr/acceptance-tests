require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'cucumber'
require 'require_all'
require 'faker'
require_all './features/support/webdriver'
require_all './features/support/builders'

class Env
  def initialize
    puts '----------------------------------------------------------------------'
    @URL = UrlBuilder.build_url
    @BROWSER = BrowserBuilder.build_browser
    @TIMEOUT = TimeouBuilder.build_timeout
    @DRIVER_PATH = DriverPathBuilder.build_driver_path(@BROWSER, @SO)
    @SO = SOBuilder.build_so
    $SESSION = nil
  end

  def start
    SitePrism.configure do |config|
      config.raise_on_wait_fors = false
      config.use_implicit_waits = true
    end

    Capybara.configure do |config|
      config.ignore_hidden_elements = false
      config.default_max_wait_time = @TIMEOUT
      config.default_driver = BrowserSelector.new.select_browser @BROWSER
      config.app_host = @URL

      $SESSION = Capybara.current_session
    end
  end
end

Env.new.start
