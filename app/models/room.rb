class Room < ActiveRecord::Base
  attr_accessible :room_name, :seats, :room_photo, :room_type 
  belongs_to :campuses 
  mount_uploader :image, ImageUploader
end 
  