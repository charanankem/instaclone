class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.where.not(id: current_user.id && current_user.followings)
  end
  
end
