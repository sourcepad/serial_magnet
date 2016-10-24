require "addressable/uri"

module SerialMagnet
  class Request
    # @param path [String]
    # @param options [Hash]
    def initialize(client, request_method, path)
      @client = client
      @request_method = request_method
      @uri = Addressable::URI.parse(path.start_with?('http') ? path : client.base_url + path)
      @headers = { Authorization: "method=apikey, token=#{client.api_key}", content_type: :json, accept: :json }
    end

    # @return [Array, Hash]
    def perform
      response = send("perform_#{@request_method}")
      JSON.parse(response.body)
    end

    private

    def perform_get
      RestClient.get @uri.to_s, @headers
    end
  end
end

