class AdminSession < Authlogic::Session::Base
  #attr_accessible :email, :password
  generalize_credentials_error_messages "Email or password is incorrect"
end
