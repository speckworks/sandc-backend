class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :user_id, :beach_id, :beach
end
