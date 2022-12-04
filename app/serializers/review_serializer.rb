class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :body,:restaurant_id
  belongs_to :user
end
