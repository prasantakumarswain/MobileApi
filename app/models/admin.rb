class Admin < ActiveRecord::Base
  attr_accessible :email, :password
  acts_as_authentic
  validates :email, :password, :presence => true
end
