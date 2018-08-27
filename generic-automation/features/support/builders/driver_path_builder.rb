class DriverPathBuilder
  def self.build_driver_path(browser, so)
    if ENV['DRIVER_PATH'].nil?
      "./features/support/drivers/#{so}/#{browser}"
      if browser.include? '_'
        "./features/support/drivers/#{so}/#{browser.split('_')[0]}"
      else
        "./features/support/drivers/#{so}/#{browser}"
      end
    else
      ENV['DRIVER_PATH']
    end
  end
end