class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :address, :user_photo, :email, :background_info, :role, :password, :password_confirmation
  has_and_belongs_to_many :courses 
  has_secure_password
  mount_uploader :user_photo, ImageUploader
end 

   
        