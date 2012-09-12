class Borrower < ActiveRecord::Base
  attr_accessible :date, :device_info_id, :time, :user_id
  belongs_to :user
  belongs_to :device_info
end
