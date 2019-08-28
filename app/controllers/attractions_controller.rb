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
    if @attraction
      redirect_to attraction_path(@attraction)
    else
      render :new
    end

  def edit
  #  @attraction = Attraction.find(params[:id])

  end

  def update
#    @attraction = Attraction.find(params[:id])
    @attraction.update(name: params[:attraction][:name], tickets: params[:attraction][:tickets], nausea_rating: params[:attraction][:nausea_rating], happiness_rating: params[:attraction][:happiness_rating], min_height: params[:attraction][:min_height])
    redirect_to attraction_path(@attraction)
  end
  end

  private

  def attr_params
    params.require(:attraction).permit(:name, :height, :nausea_rating, :happiness_rating, :min_height)
  end

end
