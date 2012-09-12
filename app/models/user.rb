class User < ActiveRecord::Base
  attr_accessible :email, :password, :token, :username, :password_salt
  has_many :borrowers
  has_many :device_infos, :through => :borrowers
  before_save :encrypt_password
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  def self.authenticate(username, password)
      user = find_by_username(username)
      if user && user.password == BCrypt::Engine.hash_secret(password, user.password_salt)
        user
      else
        nil
      end
  end
end
