class AttractionsController < ApplicationController

  def show
    @attraction = Attraction.find(params[:id])
  #  @user = User.find(params[:id])

  end

  def index
  #  binding.pry
    @attractions = Attraction.all
  end

  def new
    @attraction = Attraction.new
  end

  def create
    @attraction = Attraction.create(attr_params)
  end

  private

  def attr_params
    params.require(:attraction).permit(:name, :height, :nausea_rating, :happiness_rating, :min_height)
  end

end
