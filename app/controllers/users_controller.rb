class UsersController < ApplicationController
  def index
    # @want_spots = Spot.find(params[:spot_id]).user_id == current.id
    @want_spots = Want.where(user_id: current_user.id)
    binding.pry
  end
end
