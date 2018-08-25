require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'cucumber'
require 'require_all'
require 'faker'
require_all './features/support/webdriver'
require_all './features/support/variables'

SitePrism.configure do |config|
  config.raise_on_wait_fors = false
  config.use_implicit_waits = true
end

Capybara.configure do |config|
  puts '------------------------------------------------'

  config.ignore_hidden_elements = false
  config.default_max_wait_time = @TIMEOUT
  config.default_driver = select_browser @BROWSER
  config.app_host = @URL

  $SESSION = Capybara.current_session
  
  puts '------------------------------------------------'
end

