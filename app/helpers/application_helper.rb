module ApplicationHelper
  def like_or_dislike_btn(technology)
    like = Like.find_by(technology: technology, user: current_user)
    if like
      link_to('Dislike!', technology_like_path(id: like.id, technology_id: technology.id), method: :delete)
    else
      link_to('Like!', technology_likes_path(technology_id: technology.id), method: :post)
    end
  end

  def followingss(user)
    display = current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
    if display
        link_to('follow', followings_path(@user), method: :post)
    else
        link_to ('followed')
    end

  end


  def followerss_image(user)
    dis = current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
    if dis
        (image_tag user.profile_photo_url, width: '32px', class:'followee-image')
    end

  end

  def followerss_name(user)
    dis = current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
    if dis
        (user.fullname)
    end

  end

  def followerss_email(user)
    dis = current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
    if dis
        (user.email)
    end

  end

  def followerss_link(user)
    dis = current_user.id != user.id && !current_user.followings.where(followed_id: user.id).any?
    if dis
        link_to('follow', followings_path(user), method: :post)
    end

  end


end
