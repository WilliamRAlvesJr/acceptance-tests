module Builders
  # Contrutor generico
  module Builder
    def self.build(arg, default)
      ENV[arg] || default
    end
  end
end
