class User < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :restaurants, through: :bookings
    validates :name, presence: true, length: { minimum: 2 }
    validates :user_name, presence: true, uniqueness: true
    
end
