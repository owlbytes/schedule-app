class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :email
      t.text :user_photo
      t.text :background_info
      t.string :role #staff, student, instructor, etc. used for authetnication and authorization 
    
    t.timestamps

    end 
  end 
end
