# variaveis de ambiente
# estaticas
@download_path = './targets/downloads'

# dinamicas
@url = ENV['URL']
@browser = ENV['BROWSER']
@driver_path = ENV['DRIVER_PATH']
@timeout = if ENV['TIMEOUT'].nil?
             30
           else
             ENV['TIMEOUT'].to_i
           end
