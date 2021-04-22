class FollowingsController < ApplicationController
  def index
   
    @followers = Following.all
    followers
  end
    def create
      @user = User.find(params[:format])
      @follower =current_user.followings.create(followed_id: params[:format])
    
        @follower.save
        redirect_back(fallback_location: root_path)
     
      end
    end

    def followers
      @followedd = Following.where(followed_id: current_user.id)
      @foll =@followedd.count
    end
end
