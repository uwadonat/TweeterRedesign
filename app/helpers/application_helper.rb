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
    display = current_user.id != user.id && current_user.followings.where(followed_id: user.id).none?
    if display
      link_to('follow', followings_path(@user), method: :post)
    elsif current_user.id == user.id
      link_to(' ')
    else
      link_to('followed')
    end
  end

  def followerss_image(user)
    dis = current_user.id != user.id && current_user.followings.where(followed_id: user.id).none?
    (image_tag user.profile_photo_url, width: '32px', class: 'followee-image') if dis
  end

  def followerss_name(user)
    dis = current_user.id != user.id && current_user.followings.where(followed_id: user.id).none?
    user.fullname if dis
  end

  def followerss_email(user)
    dis = current_user.id != user.id && current_user.followings.where(followed_id: user.id).none?
    user.email if dis
  end

  def followerss_link(user)
    dis = current_user.id != user.id && current_user.followings.where(followed_id: user.id).none?
    link_to('follow', followings_path(user), method: :post) if dis
  end

  def navbar
    (render 'layouts/header').html_safe if user_signed_in?
  end

  def navbar2
    (render 'layouts/footer').html_safe unless user_signed_in?
  end
end
