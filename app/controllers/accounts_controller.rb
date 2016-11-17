class AccountsController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @accounts = @user.accounts
  end

  def show
    @user = User.find(params[:user_id])
    @account = Account.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @account = @user.accounts.new
  end

  def create
    @user = User.find(params[:user_id])
    @account = @user.accounts.create(account_params)
    redirect_to user_accounts_path
  end

  def edit
    @user = User.find(params[:user_id])
    @account = @user.accounts.find(params[:id])
  end

  def update
  @user = User.find(params[:user_id])
  @account = @user.accounts.find(params[:id])

  if @user.accounts.update(account_params)
    redirect_to user_account_path
  else
    render 'edit'
  end
  end

  def destroy
    @user = User.find(params[:user_id])
    @account = @user.accounts.find(params[:id])
    @account.destroy

    redirect_to user_accounts_path(@user)
  end

  private
  def account_params
    params.require(:account).permit(:website, :assoc_email, :assoc_password)
  end


end
