class FollowshipsController < ApplicationController
  def create
    @followship = current_user.followships.build(following_id: params[:following_id])
    if @followship.save
      flash[:notice] = "成功追蹤"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = @followship.errors.full_messages.to_sentence
      redirect_back(fallback_location: root_path)
    end
  end
  def destroy
    followship = Followship.where( user_id: current_user, following_id: params[:id]).first
    followship.destroy
    flash[:alert] = "你討厭他喔"
    redirect_back(fallback_location: root_path)
  end
end
