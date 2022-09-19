class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :name 
      t.string :phone 
      t.datetime :check_in
      t.datetime :check_out
      t.integer :number_of_nights 
      t.belongs_to :user, index: true
      t.belongs_to :hotel, index:true
      t.timestamps
    end
  end
end
