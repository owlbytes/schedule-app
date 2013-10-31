class Campus < ActiveRecord::Base
  attr_accessible :campus_name, :location, :campus_photo, :about
  has_many :rooms
  mount_uploader :image, ImageUploader 
end 
  