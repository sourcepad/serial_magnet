module SerialMagnet
  class Media < Dish::Plate
    coerce :meta, SerialMagnet::Meta
  end
end

