class AttractionsController < ApplicationController

  def show
    @attraction = Attraction.find(params[:id])
    @user = User.find(params[:id])

  end

  def index
  #  binding.pry
    @attractions = Attraction.all
  end



end
