class CreateBillings < ActiveRecord::Migration[5.1]
  def change
    create_table :billings do |t|
      t.string :billing_no
      t.decimal :total_price
      t.belongs_to :reservation, index: true 
      t.timestamps
    end
  end
end
