require_relative 'load_validation'

module Site
  # Sobreescrive do PageObject padrao
  class PageObject < SitePrism::Page
    def initialize
      load do
        puts ">> #{url}"
        wait_page_load
      end
    end

    def wait_page_load
      LoadValidation.wait_page_validation self
    end
  end
end
