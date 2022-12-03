class User < ApplicationRecord
    has_many :bookings
    has_many :reviews
    has_many :restaurants, through: :bookings
end
