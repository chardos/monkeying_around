class Api::UsersController < ApplicationController
  before_action :authenticate_with_token!, only: [:index, :update, :destroy]
  respond_to :json

  def index
    render json: User.all
  end


  def show
    u = User.find(params[:id])
    render json: u
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def update
    user = current_user

    if user.update(user_params)
      render json: user, status: 200, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
