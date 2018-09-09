module Webdriver
  module Browsers
    module Capabilities
      # Opcoes dos navegadores
      class OptionsBuilder
        def initialize
          @options = [
            '--ssl-protocol=any',
            '--ignore-ssl-errors=yes',
            '--load-images=yes',
            '--start-maximized'
          ]
        end

        def build(driver)
          @options.each do |option|
            driver.add_argument(option)
          end
        end

        def build_headless(driver)
          @options << '--headless' << '--window-size=1360x768'
          build driver
        end
      end
    end
  end
end
