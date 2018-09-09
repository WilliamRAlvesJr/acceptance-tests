module Builders
  # Contrutor de caminho para o driver
  module PathBuilder
    def self.build(browser)
      @so      = Builder.build('SO', 'windows')
      @browser = browser.split('_').first.concat('driver')
      @path    = "./features/support/drivers/#{@so}"

      check_file
    end

    private

    def self.check_file
      if File.file? "#{@path}/#{@browser}.exe"
        "#{@path}/#{@browser}.exe"
      elsif File.file? "#{@path}/#{@browser}"
        "#{@path}/#{@browser}"
      else
        raise 'O driver não existe!'
      end
    end
  end
end
