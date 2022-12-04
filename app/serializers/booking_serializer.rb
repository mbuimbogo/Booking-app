class BookingSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :status

  belongs_to :restaurant
end
