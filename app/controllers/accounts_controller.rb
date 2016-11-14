class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @account = @user.accounts.create(account_params)
    redirect_to user_path(@user)
  end

  private
  def account_params
    params.require(:account).permit(:website, :assoc_email, :assoc_password, :user_id)
  end


end
