require_relative 'options'
require_relative 'preferences'

module Webdriver
  module Browsers
    module Capabilities
      # Capabilities dos navegadores
      module BrowserCapabilities
        attr_accessor :options, :options_builder, :prefs_builder

        def init
          self.options = Selenium::WebDriver::Firefox::Options.new

          self.options_builder = OptionsBuilder.new
          self.prefs_builder   = PreferencesBuilder.new

          options_builder .build @options
          prefs_builder   .build @options
        end
      end
    end
  end
end
