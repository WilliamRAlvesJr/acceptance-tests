require_relative 'browsers/chrome'

class BrowserSelector
  def initialize
    @browser_hash = {}

    chrome_chooser = ChromeBrowser.new
    @browser_hash['chromedriver'] = chrome_chooser.get_chrome
    @browser_hash['chromedriver_home'] = chrome_chooser.get_chrome_home
    @browser_hash['chromedriver_headless'] = chrome_chooser.get_chrome_headless
    
    firefox_chooser = FirefoxBrowser.new
    @browser_hash['geckodriver'] = firefox_chooser.get_geckodriver
    @browser_hash['geckodriver_home'] = firefox_chooser.get_geckodriver_home
    @browser_hash['geckodriver_headless'] = firefox_chooser.get_geckodriver_headless
  end

  def select_browser(browser)
    @browser_hash[browser]
  end
end
