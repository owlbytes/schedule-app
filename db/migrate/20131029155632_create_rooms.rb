class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.integer :seats
      t.string :room_photo
      t.string :room_type
      t.timestamps
    end
  end  
end
