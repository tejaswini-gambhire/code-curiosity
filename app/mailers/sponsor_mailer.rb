class SponsorMailer < ApplicationMailer
  def subscription_payment_failed(user)
    @user = User.find(id: user)
    mail(to: @user.email, subject: "Payment to CodeCuriosity failed")
  end

  def notify_subscription_details(user, plan, amount)
    @user = User.find(id: user)
    @plan = plan
    @amount = amount
    mail(to: @user.email, subject: "Details of subscription as sponsor to CodeCuriosity")
  end
end
