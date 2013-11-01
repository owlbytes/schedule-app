class User < ActionMailer::Base
  default :from "neshah07@gmail.com"
end

  def registration_confirmation user
    @user = user
    mail to:user.email, subject: "Welcome to the General Assembly Family!"
  end
end
