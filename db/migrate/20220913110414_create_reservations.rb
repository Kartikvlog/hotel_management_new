class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :check_in
      t.datetime :check_out 
      t.belongs_to :customer, index: true
      t.belongs_to :room, index: true
      t.timestamps
    end
  end
end
