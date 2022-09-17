class Reservation < ApplicationRecord

	validates :first_name, presence: true

	validates :last_name, presence: true

	validates :status, presence: true

	has_many :billings

	belongs_to :room

	belongs_to :user

	belongs_to :hotel 

	enum status: { available:0, unavailable:1 }
	
end

