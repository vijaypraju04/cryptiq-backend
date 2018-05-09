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
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { id: user.id, username: user.username, jwt: token }
    end
    else
      render json: { error: "Login Failed"}
    end

  end
