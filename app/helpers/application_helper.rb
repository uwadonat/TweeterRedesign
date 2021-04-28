module ApplicationHelper
    def like_or_dislike_btn(technology)
        like = Like.find_by(technology: technology, user: current_user)
        if like
          link_to('Dislike!', technology_like_path(id: like.id, technology_id: technology.id), method: :delete)
        else
          link_to('Like!', technology_likes_path(technology_id: technology.id), method: :post)
        end
      end 
end
