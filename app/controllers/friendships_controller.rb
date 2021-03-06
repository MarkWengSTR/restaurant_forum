class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])

    if @friendship.save
      flash[:notice] = "已變成好友"
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = @friendship.errors.full_messages.to_sentence
      redirect_back(fallback_location: root_path)
    end

  end

  def destroy
    @friendship = Friendship.where(user_id: current_user, friend_id: params[:id]).first
    @friendship.destroy
    flash[:alert] = "不跟你好惹"
    redirect_back(fallback_location: root_path)
  end

end
