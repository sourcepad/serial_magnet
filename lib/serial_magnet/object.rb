module SerialMagnet
  class Object
    class << self
      def new attrs
        constant = "SerialMagnet::#{attrs.keys.first.to_s.capitalize}".constantize
        Dish(attrs.values.first, constant)
      end
    end
  end
end

