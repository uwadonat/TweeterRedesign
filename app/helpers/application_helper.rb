module ApplicationHelper

    # def like_or_dislike_btn(post)
    #     like = Like.find_by(post: post, user: current_user)
    #     if like
    #       link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    #     else
    #       link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    #     end
    #   end
    
#     def username(user)
#         unless current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
#             image_tag user.profile_photo_url, width: '32px', class:'followee-image'
#     end 
# end   
end
