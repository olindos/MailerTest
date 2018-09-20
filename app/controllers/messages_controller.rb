class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
  end

  def send_balance_mail
    @account = Account.find(params[:id])
    @message = Message.find(params[:id])

    AccountMailer.account_balance(@message, @account).deliver_now
  end

  private

  def message_params
    params.require(:message).permit(:title, :text)
  end
end
