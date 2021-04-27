module FollowingsHelper
  def followers(user)
    user.followings.where(user_id: user.id).count
  end

  def followed(user)
    Following.where(followed_id: user.id).count
  end

  def followed?(user)
    current_user.followings.where(followed_id: user.id || current_user.id)
  end

  def tweets(user)
    user.technologies.count
  end
end
