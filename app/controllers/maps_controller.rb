class MapsController < ApplicationController
  def index
    @spots = Spot.includes(:city)
  end
end