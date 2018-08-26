
class PreferencesBuilder
  def initialize
    @DOWNLOAD_PATH = './targets/downloads'
    @preferences = {}
    
    @preferences['download.default_directory'] = @DOWNLOAD_PATH
  end

  def build(driver)
    @preferences.each do |pref|
      driver.add_preference(pref[0], pref[1])
    end
  end
end
