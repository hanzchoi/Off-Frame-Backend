class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :color, :category, :size, :description
  has_many :images

end
