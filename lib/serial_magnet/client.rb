module SerialMagnet
  class Client
    include SerialMagnet::API
    include SerialMagnet::Utils
    attr_accessor :api_key, :client_key, :base_url

    # Initializes a new Client object
    #
    # @param options [Hash]
    # @return [Magnet::Client]
    def initialize(attrs = {})
      options = SerialMagnet.options.merge(attrs)
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
      yield(self) if block_given?
    end

    # @return [Hash]
    def credentials
      {
        api_key: api_key,
        client_key: client_key
      }
    end

    # @return [Boolean]
    def credentials?
      credentials.values.all?
    end
  end
end
