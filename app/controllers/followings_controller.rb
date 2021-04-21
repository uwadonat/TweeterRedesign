class FollowingsController < ApplicationController
    def create
      @user = User.find(params[:format])
      @follow_up = current_user.follow_up.create(followed_id: params[:format])
      @follow_up.save
      redirect_back(fallback_location: root_path)
    end
end
