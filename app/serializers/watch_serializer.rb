class WatchSerializer < ActiveModel::Serializer
    attributes :id, :name, :brand, :color, :image_url, :price
end