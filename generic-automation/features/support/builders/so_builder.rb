class SOBuilder
  def self.build_so
    if ENV['SO'].nil?
      @DRIVER_PATH.concat '.exe'
      'windows'
    elsif ENV['SO'] == 'linux'
      'linux'
    else
      puts 'A variável SO não está correta!'
      exit
      end
  end
end
