module SerialMagnet
  class Meta < Dish::Plate
    coerce :publishedDate, ->(value) { (value.empty? ? nil : Time.parse(value)) }
  end
end

