class FollowingsController < ApplicationController
  def create
    @user = User.find(params[:format])
    @follower = current_user.followings.create(followed_id: params[:format])
    @follower.save
    redirect_back(fallback_location: root_path)
  end

  def followers
    @foll = Following.where(followed_id: current_user.id).count
  end
end
