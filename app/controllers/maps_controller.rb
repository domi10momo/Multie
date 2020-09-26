class MapsController < ApplicationController
  def index
    @spots = Spot.includes(:city)
    gon.spots = @spots
    #テスト用データ
    gon.test = Spot.includes(:city).find(4).name

  end
end