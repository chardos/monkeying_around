class Api::UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: {errors: user.errors}, status: 422
    end
  end

  def show
    u = User.find(params[:id])
    render json: u
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
