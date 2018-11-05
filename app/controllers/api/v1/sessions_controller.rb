class Api::V1::SessionsController < ApplicationController
  def login
    @user = User.find_by(username: user_params[:username])
    if(@user && @user.authenticate(user_params[:password]))
      token = JWT.encode({user_id: @user.id}, ENV['SECRET_KEY'])
      render json: {
        user: { user_id: token, username: @user.username},
        # This is the part where you will save the items that partains to the user cart this is what is sent
        # back to the front end
        shopping_carts: @user.products
      }
    else
      render json: {
        error: "Invalid Username and Password"
      }, status: :unauthorized
    end
  end

  def persist
    token = request.headers["Authorization"]
    begin
      payload = JWT.decode(token, ENV['SECRET_KEY'], true)
    rescue JWT::DecodeError
      nil
    end
    if(payload)
      id = payload[0]["user_id"]
      @user = User.find(id)
      render json: {
        user: { user_id: @user.id, username: @user.username},
        shopping_carts: @user.products
      }
    else
      render json: {
        error: "Invalid token"
      }
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
