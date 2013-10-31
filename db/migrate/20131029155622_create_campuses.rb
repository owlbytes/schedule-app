class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :campus_name
      t.string :location
      t.string :campus_photo
      t.text :about

      t.timestamps
    end
  end
end 
 
