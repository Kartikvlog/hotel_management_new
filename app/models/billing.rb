class Billing < ApplicationRecord
  validates :billing_no, presence: true
  validates :total_price, presence: true
  
  belongs_to :reservation
end
