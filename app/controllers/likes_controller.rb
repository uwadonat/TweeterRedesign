class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(technology_id: params[:technology_id])
    if @like.save
      redirect_to technologies_path, notice: 'You liked a technology.'
    else
      redirect_to technologies_path, alert: 'You cannot like this technology.'
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, technology_id: params[:technology_id])
    if like
      like.destroy
      redirect_to technologies_path, notice: 'You disliked a post.'
    else
      redirect_to technologies_path, alert: 'You cannot dislike technology that you did not like before.'
    end
  end
end
