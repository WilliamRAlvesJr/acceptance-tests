class BrowserBuilder
  def build_browser
    if ENV['BROWSER'].nil?
      'chromedriver'
    else
      ENV['BROWSER']
    end
  end
end
