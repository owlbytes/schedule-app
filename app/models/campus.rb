class Campus < ActiveRecord::Base
  attr_accessible :campus_name, :location, :campus_photo, :about
  has_many :rooms
  mount_uploader :campus_photo, ImageUploader 
end 
  