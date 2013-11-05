class UserMailer < ActionMailer::Base
  default :from => "neshah07@gmail.com"

  def registration_confirmation user
    mail to: user.email, subject: "welcome to the GA family!"
  end
  
end
