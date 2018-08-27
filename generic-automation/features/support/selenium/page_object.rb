require_relative 'load_validation'

class PageObject < SitePrism::Page

    def initialize
        self.load do
            puts ">> #{self.url}"
            wait_page_load
        end
    end

    def wait_page_load
        LoadValidation.wait_page_validation self
    end
end