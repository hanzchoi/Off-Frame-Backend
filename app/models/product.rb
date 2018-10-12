class Product < ApplicationRecord
  has_many :images
  has_many :shopping_carts
  has_many :users, through: :shopping_carts
end
