module FollowingsHelper
    def followers
        current_user.followings.where(user_id: current_user.id).distinct.count 
    end

    def followed
        current_user.followings.where(followed_id: current_user.id).distinct.count
    end

end
