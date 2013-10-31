class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :address, :user_photo, :email, :background_info, :role  
  has_and_belongs_to_many :courses 
  mount_uploader :image, ImageUploader
end 

   
        