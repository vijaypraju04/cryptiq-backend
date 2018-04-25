class Api::V1::UsersController < ApplicationController

  def create
    @user = User.create(user_params)
    render json: @users
  end
  
  def index
    @users = User.all
    render json: @users
  end


end
