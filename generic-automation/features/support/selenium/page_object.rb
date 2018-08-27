require_relative 'load_validation'

class PageObject < SitePrism::Page
    load_validation { @validation.wait_page_validation self }

    def initialize
        @validation = LoadValidation.new
        self.load
    end

    def wait_page_load
        @validation.wait_page_validation self
    end
end