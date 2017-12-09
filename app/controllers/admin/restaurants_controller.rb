class Admin::RestaurantsController < Admin::BaseController 

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.page(params[:page]).per(10)
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

  end
  def edit
    
  end
  def update
    if @restaurant.update(restaurant_params)
      redirect_to admin_restaurants_path(@restaurant)
      flash[:notice] = "Restaurant update was successfully "
    else
      render :edit
      flash[:alert] = "restaurant was failed to update"
    end
  end
  def destroy
    @restaurant.destroy
    redirect_to admin_restaurants_path
    flash[:notice] = "restaurant was delete"
  end
end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :opening_hours, :tel, :address, :decription, :image, :category_id)
end
def set_restaurant
    @restaurant = Restaurant.find(params[:id])
end
