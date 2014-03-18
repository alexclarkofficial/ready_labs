class Mailer < ActionMailer::Base
  default from: "readyLabs"

  def contact_email(user)
    @user = user
    mail(to: "raditude28@gmail.com", subject: "readyLabs Contact Form")
  end
end
