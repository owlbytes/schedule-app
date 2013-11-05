class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :phone, :address, :user_photo, :email, :background_info, :role, :password, :password_confirmation
  has_and_belongs_to_many :courses 
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, uniqueness: true
  validates :address, presence: true
  validates :email, presence: true
  validates :role, presence: true
  mount_uploader :user_photo, ImageUploader
end 
