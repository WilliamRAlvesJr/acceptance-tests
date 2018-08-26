class TimeouBuilder
  def build_timeout
    if ENV['TIMEOUT'].nil?
      30
    else
      ENV['TIMEOUT'].to_i
    end
  end
end
