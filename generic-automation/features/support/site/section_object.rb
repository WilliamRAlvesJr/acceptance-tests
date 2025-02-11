require_relative 'load_validation'

module Site
  # Sobreescrive do PageObject padrao
  class SectionObject < SitePrism::Section
    def wait_section_load
      LoadValidation.wait_section_validation self
    end
  end
end
