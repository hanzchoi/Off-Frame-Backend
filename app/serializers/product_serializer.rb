class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :category, :size, :description
end
