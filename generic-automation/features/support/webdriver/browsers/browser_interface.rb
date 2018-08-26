class BrowserInterface
    def initialize
        raise 'A classe não pode ser instânciada, somente herdada'
    end

    def get_browser
        raise 'erro, o método não foi sobrescrito'
    end

    def get_browser_home
        raise 'erro, o método não foi sobrescrito'
    end

    def get_browser_headless
        raise 'erro, o método não foi sobrescrito'
    end
end