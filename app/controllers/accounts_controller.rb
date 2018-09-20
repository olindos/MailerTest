class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.save
  end

  private

  def account_params
    params.require(:account).permit(:balance, :currency, :name, :email)
  end
end
