class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
  
  def new
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to @user
  end

  private
  def user_params
    params.require(:user).permit(:chief_username, :chief_email, :chief_password)
  end
end
