def build_driver_path
  if ENV['DRIVER_PATH'].nil?
    "./features/support/drivers/#{@SO}/#{@BROWSER}"
    if @BROWSER.include? '_'
      "./features/support/drivers/#{@SO}/#{@BROWSER.split('_')[0]}"
    else
      "./features/support/drivers/#{@SO}/#{@BROWSER}"
    end
  else
    ENV['DRIVER_PATH']
  end
end
