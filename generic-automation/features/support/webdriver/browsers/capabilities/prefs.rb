@preferences = {
  pref1: ['download.default_directory', @DOWNLOAD_PATH]
}

def build_prefs(driver)
  @preferences.each do |pref|
    driver.add_preference(pref[0], pref[1])
  end
end
