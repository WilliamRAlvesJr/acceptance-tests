def select_browser(browser)

  if browser == 'geckodriver'
    :firefox
  elsif browser == 'geckodriver_headless'
    :firefox_headless
  elsif browser == 'geckodriver_home'
    :firefox_home

  elsif browser == 'phantomjs'
    :phantomjs

  elsif browser == 'chromedriver_headless'
    :chrome_headless
  elsif browser == 'chromedriver_home'
    :chrome_home
  else
    :chrome
  end
end
