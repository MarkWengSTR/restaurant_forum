class Admin::RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant was successfully create"
      redirect_to admin_restaurants_path
    else
      flash.now[:alert] = "restaurant was failed to create"
      render :new
    end
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :opening_hours, :tel, :address, :description)
end