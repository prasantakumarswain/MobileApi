class DeviceInfo < ActiveRecord::Base
  attr_accessible :device_id, :device_name, :qr_code
  validates :device_id, :device_name, :qr_code, :presence => true
  has_many :borrowers
  has_many :users, :through => :borrowers
end
