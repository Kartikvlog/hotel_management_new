class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.string :room_type
      t.integer :price 
      t.belongs_to :user, index: true
      t.belongs_to :hotel, index:true
      t.timestamps
    end
  end
end
