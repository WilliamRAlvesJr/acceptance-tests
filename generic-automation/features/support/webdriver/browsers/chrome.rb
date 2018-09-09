require_relative 'browser_template'

module Webdriver
  module Browsers
    # Navegador Chrome
    class Chrome < BrowserTemplate
      def initialize
        @browser         = -> { :chrome          }
        @method_default  = -> { :chrome_default  }
        @method_headless = -> { :chrome_headless }
      end
    end
  end
end
