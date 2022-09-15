class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :role, presence: true
  validates :country, presence: true
  

  
  has_many :reservations
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  enum role: { user:0, admin:1 }
end 
