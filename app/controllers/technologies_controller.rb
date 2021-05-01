class TechnologiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @user = current_user
    @technology = Technology.new
    @newtech = Technology.all.includes(:user).order('created_at DESC')
  end

  def create
    @user = current_user
    @technology = @user.technologies.create(technology_params)
    if @technology.save
      redirect_to technologies_path, notice: 'your technology is now on Newtech'
    else
      render :index, alert: 'your technology was not posted'
    end
  end

  private

  def technology_params
    params.require(:technology).permit(:tech_desc)
  end
end
