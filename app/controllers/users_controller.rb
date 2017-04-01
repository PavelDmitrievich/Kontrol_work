class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@images = @user.images
  end
end
