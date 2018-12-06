class Api::V1::ShoppingCartsController < ApplicationController
  def index
    @shopping_carts = ShoppingCart.all
    render json: @shopping_carts
  end

  def create
  end

  private
  def shopping_cart_params
    params.require(:shopping_cart).permit(:user_id, :product_id)
  end
end
