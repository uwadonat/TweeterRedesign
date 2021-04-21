class UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end
    def index
        @users = User.all
        @user = current_user
        @tech = Technology.all
    end

    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if user.save
          redirect_to users_path
        else
            render "new"
        end
    end
    
    
end
