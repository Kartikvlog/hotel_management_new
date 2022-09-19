class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :status, default: 0
      t.integer :room_type, default: 0
      t.integer :number_of_people
      t.string :description  
      t.belongs_to :user, index: true
      t.belongs_to :room, index: true
      t.belongs_to :hotel, index: true
      t.timestamps
    end
  end
end
