class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(r_param)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def r_param
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
