module SerialMagnet
  module Utils
    def perform_get type, path, id=nil, key=path
      response = SerialMagnet::Request.new(self, :get, "#{path}/#{id}").perform
      response[key].each_with_index.map { |object, index| SerialMagnet::Object.new({ type => object.merge(number: index + 1) }) }
    end
  end
end

