class PagesController < ApplicationController
  def info
    @user = current_user
    
  end
end
