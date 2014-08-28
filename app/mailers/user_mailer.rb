class UserMailer < ActionMailer::Base
  default from: "email@yourdomain.com"

  def registration_confirmation(user)
  	@user = user
  	mail(to: user.email, subject: "#{t 'mail.registration_confirmation'}")
  end
end
