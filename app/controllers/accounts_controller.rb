class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @user = User.find(params[:user_id])
    @account = @user.accounts.create(account_params)
    redirect_to user_accounts_path(@accounts)
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy

    redirect_to @account
  end

  private
  def account_params
    params.require(:account).permit(:website, :assoc_email, :assoc_password)
  end


end
