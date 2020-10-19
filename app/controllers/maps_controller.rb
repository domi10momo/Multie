class MapsController < ApplicationController
  def index
    @spots = Spot.includes(:city)
    gon.spots = @spots
  end
end