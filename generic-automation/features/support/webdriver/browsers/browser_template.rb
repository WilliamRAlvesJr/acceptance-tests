require_relative 'capabilities/browser_capabilities'

module Webdriver
  module Browsers
    # Interface para navegadores
    class BrowserTemplate
      include Capabilities::BrowserCapabilities

      def browser_default
        init
        build
        register_driver @method_default
      end

      def browser_headless
        init
        register_driver @method_headless do
          @options_builder.build_headless(@options)
          build
        end
      end

      def method_missing(method_name)
        if respond_to_missing? method_name
          method_name.call
        else
          super
        end
      end

      def respond_to_missing?(method_name)
        method_name =~ 'browser_(.+)' || super
      end

      private

      def build_options(options)
        @args = { options: options }
      end

      def build_browser(browser)
        @args = { browser: browser }
      end

      def build_path(driver_path)
        @args = { driver_path: driver_path }
      end

      def build
        build_browser @browser
        build_path @driver_path
        build_options @options
      end

      def register_driver(browser_method)
        Capybara.register_driver browser_method.call do |app|
          yield if block_given?
          Capybara::Selenium::Driver.new(app, @args)
        end
        browser_method.call
      end
    end
  end
end
