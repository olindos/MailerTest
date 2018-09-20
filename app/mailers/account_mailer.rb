class AccountMailer < ApplicationMailer

  def account_balance
    email_with_name = %("#{@account.name}" <#{@account.email}>)
    mail(to: email_with_name, subject: @message.title)
  end

end
