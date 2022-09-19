class CreateBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :billings do |t|
      t.string :room_type
      t.integer :number_of_nights
      t.integer :night_rate 
      t.decimal :total_amount 
      t.belongs_to :reservation, index: true 
      t.timestamps
    end
  end
end
