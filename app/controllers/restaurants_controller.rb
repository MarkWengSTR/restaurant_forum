class RestaurantsController < ApplicationController
  before_action :authenticate_user!

  def index
    @restaurants = Restaurant.page(params[:page]).per(9)
    @categories = Category.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @comment = Comment.new
  end
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
