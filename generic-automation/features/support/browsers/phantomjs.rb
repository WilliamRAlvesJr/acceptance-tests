# phantomjs
Capybara.register_driver :phantomjs do |app|
  # todo
  options = {
    js_errors: false,
    phantomjs_options: [
      '--load-images=no',
      '--ignore-ssl-errors=yes',
      '--ssl-protocol=any'
    ]
  }
  # todo

  Capybara::Poltergeist::Driver.new(app, options)
end
