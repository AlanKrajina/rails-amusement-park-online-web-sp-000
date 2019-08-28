class RidesController < ApplicationController



  def create
    ride = Ride.create(user_id: current_user.id, attraction_id: params[:attraction_id])
  end


end
