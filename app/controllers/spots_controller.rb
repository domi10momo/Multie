class SpotsController < ApplicationController
  def index
    @spots = Spot.includes(:city)
    @wanted_spot_ids = current_user.wants.pluck(:spot_id)
  end
end
