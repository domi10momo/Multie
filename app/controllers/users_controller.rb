class UsersController < ApplicationController
  def index
    wanted_spot_ids = current_user.wants.pluck(:spot_id)
    @want_spots = Spot.find(wanted_spot_ids)
  end
end
