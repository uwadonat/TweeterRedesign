class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @newtech = Technology.includes(:user).order('created_at DESC')
  end

  def index
    @users = User.all.order('created_at DESC')
    @user = current_user
    @tech = Technology.all
    @newtech = @user.technologies.order('created_at DESC')
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user.save
      redirect_to users_path
    else
      render 'new'
    end
  end
end
