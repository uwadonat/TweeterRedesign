module FollowingsHelper
    def followers
        current_user.followings.where(user_id: current_user.id).count 
    end

    def followed
        current_user.followings.where(followed_id: current_user.id).count
    end

end
