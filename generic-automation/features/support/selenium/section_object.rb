require_relative 'load_validation'

class SectionObject < SitePrism::Section
    def wait_section_load
        LoadValidation.new.wait_section_validation self
    end
end