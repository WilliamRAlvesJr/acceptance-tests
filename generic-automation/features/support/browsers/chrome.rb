# chrome_options
chrome_options = Selenium::WebDriver::Chrome::Options.new
# todo
chrome_options.add_argument('--window-size=800,640')
chrome_options.add_preference('homepage', 'http://www.seleniumhq.com/')
chrome_options.add_preference('download.default_directory', @download_path)
# todo

# chrome
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, options: chrome_options, browser: :chrome)
end

# chrome_headless
Capybara.register_driver :chrome_headless do |app|
  chrome_options.add_argument('headless')
  chrome_options.add_argument('--window-size=1360x768')

  Capybara::Selenium::Driver.new(app, options: chrome_options,
                                      browser: :chrome)
end
