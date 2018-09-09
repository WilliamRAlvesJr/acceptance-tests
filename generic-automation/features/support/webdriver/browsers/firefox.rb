require_relative 'browser_template'

module Webdriver
  module Browsers
    # Navegador Firefox
    class Gecko < BrowserTemplate
      def initialize
        @browser         = -> { :firefox          }
        @method_default  = -> { :firefox_default  }
        @method_headless = -> { :firefox_headless }
      end
    end
  end
end
