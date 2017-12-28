class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
end
def edit

  @user = User.find(params[:id])
  unless @user = current_user
    redirect_to user_path(current_user)
  end

end
def update
  if @user = User.update(user_params)
    redirect_to user_path(current_user)
  else
    render :edit
    flash.now[:alert] = "名字勒"
  end
end

private

def user_params
  params.require(:user).permit(:name, :intro, :avatar)
end


end
