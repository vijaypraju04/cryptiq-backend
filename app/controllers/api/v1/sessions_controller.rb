class Api::V1::SessionsController < ApplicationController
  def show
    if current_user
    render json: {
    id: current_user.id,
    username: current_user.username
    } end
  end

  def create
    user = User.find_by(username: params[:username])
  end
end
