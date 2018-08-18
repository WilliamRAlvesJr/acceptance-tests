require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'cucumber'
require 'require_all'
require_all './features/support/browsers'
require_all './features/support/variables'

# configs
SitePrism.configure do |config|
  config.use_implicit_waits = true
end

Capybara.configure do |config|
  config.default_max_wait_time = @timeout

  config.default_driver = if @browser == 'firefox'
                            :firefox
                          elsif @browser == 'firefox_driver'
                            :firefox_driver
                          elsif @browser == 'firefox_path'
                            :firefox_path
                          elsif @browser == 'phantomjs'
                            :phantomjs
                          elsif @browser == 'chrome_headless'
                            :chrome_headless
                          else
                            :chrome
                          end

  if @url
    config.app_host = 'https://www.phptravels.net'
  else
    puts 'A variável URL não foi passada!'
    exit
  end
end

# Capybara.default_max_wait_time = 5
