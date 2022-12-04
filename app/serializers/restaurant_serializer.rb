class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :likes

  has_many :bookings
  has_many :reviews
  has_many :users
end
