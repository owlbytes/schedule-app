class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :course_name
      t.date :date
      t.time :time
      t.text :about
      t.string :course_photo
      t.integer :room_id #st
      t.integer :instructor_id 

      t.timestamps
    end 

    create_table :courses_users do |t|
      t.belongs_to :course
      t.belongs_to :user
    end 
  end 
end