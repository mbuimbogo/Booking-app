class User < ApplicationRecord
    has_many :bookings
    has_many :reviews
    has_many :restaurants, through: :bookings
    validates :name, presence: true, length: { minimum: 2 }
    validates :user_name, presence: true, uniqueness: true
    
end
