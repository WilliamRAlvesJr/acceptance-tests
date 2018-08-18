# firefox
Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end

# firefox_driver
Capybara.register_driver :firefox_driver do |app|
  default_firefox_driver_path = './features/support/drivers/linux/geckodriver'

  Capybara::Selenium::Driver.new(app,
                                 browser: :firefox,
                                 driver_path:
                                         default_firefox_driver_path)
end

# firefox_path
Capybara.register_driver :firefox_path do |app|
  if @driver_path
    Capybara::Selenium::Driver.new(app,
                                   browser: :firefox,
                                   driver_path:
                                    @driver_path)
  else
    puts 'O caminho para o driver não foi passado!'
    puts 'Insira um valor no parametro de execução DRIVER_PATH'
    puts
  end
end
