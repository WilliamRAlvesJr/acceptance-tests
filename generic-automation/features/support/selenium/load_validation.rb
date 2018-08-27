class LoadValidation
  def self.wait_page_validation(page)
    page.url_matcher

    sleep(0.5) until $SESSION.evaluate_script(
      'document.readyState == "complete"' \
        '&& window.$ != undefined' \
        '&& $.active === 0' )

    unless page.all_there?
      raise 'Os elementos não foram encontrados na página'
    end
  end

    def self.wait_section_validation(section)
      sleep(0.3) until $SESSION.evaluate_script(
          'window.$ != undefined' \
          '&& $.active === 0' )

      unless section.all_there?
        raise 'Os elementos não foram encontrados na página'
      end
    end
end
