class User < ApplicationRecord
  has_many :reservations
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  enum role: {user: 0 , admin: 1}
end 
