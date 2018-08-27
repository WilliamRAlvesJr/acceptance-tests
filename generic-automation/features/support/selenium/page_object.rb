require_relative 'load_validation'

class PageObject < SitePrism::Page
    load_validation { LoadValidation.wait_page_validation self }

    def initialize
        self.load
        wait_page_load
    end

    def wait_page_load
        LoadValidation.wait_page_validation self
    end
end