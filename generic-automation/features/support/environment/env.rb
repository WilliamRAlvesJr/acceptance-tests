require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'cucumber'
require 'require_all'
require 'faker'
require 'active_support/all'
require_relative 'capybara_conf'
require_relative 'site_prism_conf'
require_all './features/support/webdriver'
require_all './features/support/builders'

# Configuracoes de ambiente
module Environment
  include Builders

  def self.init
    @url     = Builder.build('URL', 'https://www.phptravels.net')
    @browser = Builder.build('BROWSER', 'chrome_default')
    @timeout = Builder.build('TIMEOUT', '30').to_i
    @driver  = Builder.build('DRIVER_PATH', PathBuilder.build(@browser))

    start_config
  end

  private

  def self.start_config
    CapybaraConfig.capybara_initialize(@timeout, @browser, @url)
    SitePrismConf.site_prism_initialize
  end
end
