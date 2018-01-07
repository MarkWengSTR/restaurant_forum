class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]
def show
  @comment_restaurants = @user.restaurants.uniq
  @favorited_restaurants = @user.favorited_restaurants.uniq
  @followings = @user.followings
  @followers = @user.followers
end
def edit
  unless @user == current_user
    redirect_to user_path(@user)
  end
end
def update
  @user.update(user_params)
  redirect_to user_path(current_user)
end

def index
  @users = User.all
end


private

def set_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:name, :intro, :avatar)
end


end
