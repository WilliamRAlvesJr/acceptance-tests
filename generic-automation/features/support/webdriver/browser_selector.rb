require_relative 'browsers/chrome'

class BrowserSelector
  def initialize
    @browser_hash = {}

    chrome_chooser = ChromeBrowser.new
    @browser_hash['chromedriver'] = chrome_chooser.get_browser
    @browser_hash['chromedriver_home'] = chrome_chooser.get_browser_home
    @browser_hash['chromedriver_headless'] = chrome_chooser.get_browser_headless
    
    firefox_chooser = FirefoxBrowser.new
    @browser_hash['geckodriver'] = firefox_chooser.get_browser
    @browser_hash['geckodriver_home'] = firefox_chooser.get_browser_home
    @browser_hash['geckodriver_headless'] = firefox_chooser.get_browser_headless
  end

  def select_browser(browser)
    @browser_hash[browser]
  end
end
