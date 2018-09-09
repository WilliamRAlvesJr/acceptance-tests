module Environment
  # Configuracoes SitePrism
  module SitePrismConf
    def self.site_prism_initialize
      SitePrism.configure do |config|
        config.raise_on_wait_fors = false
        config.use_implicit_waits = true
      end
    end
  end
end
