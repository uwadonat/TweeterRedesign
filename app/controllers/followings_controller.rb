class FollowingsController < ApplicationController
   def index
     @following = Following.new
     @followers = Following.all
   end
   def create
      @user = User.find(params[:format])
      
      @follower =current_user.followings.create(followed_id: params[:format])
      @follower.save
        redirect_back(fallback_location: root_path)
   end
 
end
