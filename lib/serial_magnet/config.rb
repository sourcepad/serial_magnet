module SerialMagnet
  module Config

    VALID_OPTIONS_KEYS = [
      :api_key,
      :client_key,
      :client
    ]

    attr_accessor *VALID_OPTIONS_KEYS

    def configure
      yield self
      self
    end

    def options
      options = {}
      VALID_OPTIONS_KEYS.each{ |pname| options[pname] = send(pname) }
      options
    end

    def credentials
      {
        api_key: api_key,
        client_key: client_key
      }
    end
  end
end
