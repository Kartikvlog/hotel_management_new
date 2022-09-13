class Reservation < ApplicationRecord
  has_many :billings
	belongs_to :room
	belongs_to :customer
end
