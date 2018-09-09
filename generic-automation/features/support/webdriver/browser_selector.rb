require_relative 'browsers/browser_template'

module Webdriver
  # Selecionador de browser
  module BrowserSelector
    include Browsers

    # Seleciona um browser reflexivamente
    def self.select_browser(browser)
      @props   = browser.capitalize.split('_')
      @klass   = @props.first || 'chrome'
      @type    = @props.last  || 'default'
      @browser = Webdriver::Browsers.const_get(@klass).new
      @browser.method("browser_#{@type}").call
    end
  end
end
