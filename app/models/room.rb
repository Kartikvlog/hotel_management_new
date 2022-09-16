class Room < ApplicationRecord

	validates :room_no, presence: true

	validates :room_type, presence: true

	validates :price, presence: true

	has_many :reservations

	belongs_to :hotel
	 
end
