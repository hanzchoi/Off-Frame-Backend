class Api::V1::ShoppingCartsController < ApplicationController
  def index
    @shopping_carts = ShoppingCart.all
    render json: @shopping_carts
  end
end
