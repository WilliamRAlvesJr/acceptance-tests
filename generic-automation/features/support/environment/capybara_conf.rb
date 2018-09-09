require './features/support/webdriver/browser_selector'

module Environment
  # Configuracoes capybara
  module CapybaraConfig
    include Webdriver

    def self.capybara_initialize(timeout, browser, url)
      Capybara.configure do |config|
        config.ignore_hidden_elements = false
        config.default_max_wait_time = timeout
        config.default_driver = BrowserSelector.select_browser browser
        config.app_host = url
      end
    end

    def self.get_ses
      Capybara.current_session
    end
  end
end
