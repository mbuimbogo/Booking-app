class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name
  has_many :reviews
  
end
