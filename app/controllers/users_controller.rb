class UsersController < ApplicationController
	before_action :set_user, only: [:set_admin]
	load_and_authorize_resource

  def index
  	@users = User.all
  end

  def set_admin
  	@user.admin!
  	redirect_to users_path
  end

  private
    def set_user
      @user = User.find(params[:id])
    end
end
