module Webdriver
  module Browsers
    module Capabilities
      # Preferencias dos navegadores
      class PreferencesBuilder
        def initialize
          @download_path = './temp/downloads'
          @preferences = {}
          @preferences['download.default_directory'] = @download_path
        end

        def build(driver)
          @preferences.each do |pref|
            driver.add_preference(pref[0], pref[1])
          end
        end
      end
    end
  end
end
