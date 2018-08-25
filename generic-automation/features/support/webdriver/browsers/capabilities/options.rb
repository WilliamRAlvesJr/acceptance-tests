@options = [
  '--ssl-protocol=any',
  '--ignore-ssl-errors=yes',
  '--load-images=yes'
]

def build_options(driver)
  @options.each do |option|
    driver.add_argument(option)
  end
end

def build_headless(driver)
  @options << '--headless' << '--window-size=1360x768'
  build_options driver
end
