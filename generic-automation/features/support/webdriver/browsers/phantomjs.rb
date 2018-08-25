# O selenium nao da mais suporte para o phantomjs
options = {
  js_errors: false,
  phantomjs_options: [
    '--load-images=yes',
    '--ignore-ssl-errors=yes',
    '--ssl-protocol=any'
  ]
}

# phantomjs
Capybara.register_driver :phantomjs do |app|
  options < { executable_path: @DRIVER_PATH }

  Capybara::Poltergeist::Driver.new(app, options)
end

# phantomjs_home
Capybara.register_driver :phantomjs do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end
