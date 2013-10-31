class Course < ActiveRecord::Base
  attr_accessible :course_name, :date, :time, :about, :course_photo, :room_id, :instructor_id
  has_and_belongs_to_many :students, class_name: 'User'
  belongs_to :instructor, class_name: 'User'
  mount_uploader :image, ImageUploader
end 

 
    