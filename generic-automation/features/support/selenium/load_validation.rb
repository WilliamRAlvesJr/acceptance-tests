class LoadValidation
  def wait_page_validation(page)
    page.url_matcher
    page.all_there?

    sleep(0.5) until $SESSION.evaluate_script(
      'document.readyState == "complete"' \
        '&& window.$ != undefined' \
        '&& $.active === 0'
    )
    end

    def wait_section_validation(section)
      section.all_there?
  
      sleep(0.3) until $SESSION.evaluate_script(
          'window.$ != undefined' \
          '&& $.active === 0'
      )
      end
end
