module ApplicationHelper
    def follow_tech
        like = Like.find_by(post: post, user: current_user)

    end
end
