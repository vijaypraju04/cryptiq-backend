class Api::V1::PortfoliosController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

end
