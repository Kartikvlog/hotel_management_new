class Reservation < ApplicationRecord

	validates :first_name, presence: true

	validates :last_name, presence: true

	validates :status, presence: true

	validates :room_type, presence: true

	has_many :billings

	belongs_to :room

	belongs_to :user 
	
	belongs_to :hotel 

	enum status: { available:0, unavailable:1 }
	
	enum room_type: { single:0, double:1, delux:2 }
	
end

