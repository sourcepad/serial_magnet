module SerialMagnet
  class Issue < Dish::Plate
    coerce :meta, SerialMagnet::Meta
    coerce :customMeta, SerialMagnet::CustomMeta
    coerce :articles, SerialMagnet::Article
  end
end

