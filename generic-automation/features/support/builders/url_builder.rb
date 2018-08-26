class UrlBuilder
  def build_url
    if ENV['URL']
      'https://www.phptravels.net'
    else
      puts 'A variável URL não foi passada!'
      exit
    end
  end
end
