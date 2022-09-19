class Hotel < ApplicationRecord

  validates :phone_number, presence:true, length: { maximum: 10 },numericality: { only_integer: true }

  validates :name, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :state, presence: true

  has_many :rooms

  has_many :reservations
  
end
