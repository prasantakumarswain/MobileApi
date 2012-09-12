class UserMailer < ActionMailer::Base
  def set_password(user)
    @user = user
    mail(:to => user.email, :from => "simanchala.pradhan@gmail.com", :subject => "set your password", :content_type => "text/html")
  end
end
