module SerialMagnet
  class Volume < Dish::Plate
    coerce :issues, SerialMagnet::Issue
    coerce :meta, SerialMagnet::Meta
    coerce :customMeta, SerialMagnet::CustomMeta
  end
end

