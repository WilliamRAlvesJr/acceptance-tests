# Valida JQuery e espera carregar o documento
module Selenium
  module LoadValidation
    include Environment

    def self.wait_page_validation(page)
      page.url_matcher

      sleep(0.5) until CapybaraConfig.get_ses.evaluate_script(
        'document.readyState == "complete"' \
          '&& window.$ != undefined' \
          '&& $.active === 0'
      )

      unless page.all_there?
        raise "Não foi possível encontrar os elementos\n"\
              'apenas os elementos ' \
              "#{page.elements_present}" \
              ' foram encontrados.'
      end
    end

    def self.wait_section_validation(section)
      sleep(0.3) until CapybaraConfig.get_ses.evaluate_script(
        'window.$ != undefined' \
          '&& $.active === 0'
      )

      unless section.all_there?
        raise "Não foi possível encontrar os elementos\n"\
              'apenas os elementos ' \
              "#{section.elements_present}" \
              ' foram encontrados.'
      end
    end
  end
end
