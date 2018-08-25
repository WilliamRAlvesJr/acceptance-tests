def wait_page_load(page)
  page.url_matcher
  page.all_there?

  sleep(0.5) until $SESSION.evaluate_script(
    'document.readyState == "complete"' \
      '&& window.$ != undefined' \
      '&& $.active === 0'
  )
end
