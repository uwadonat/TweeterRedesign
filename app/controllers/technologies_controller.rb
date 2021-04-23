class TechnologiesController < ApplicationController
    before_action :authenticate_user!


    def index
        @users = User.all
       @user = current_user
        @technology = Technology.new
        @newtech = Technology.all.order('created_at DESC') 
        # timeline_technologies
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
    def timeline_technologies
        @timeline_technologies = Technology.where(user: (current_user.followeds.to_a << current_user)).ordered_by_most_recent 
    end
    def technology_params
        params.require(:technology).permit(:tech_desc)
    end
   
end
