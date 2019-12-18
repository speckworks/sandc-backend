class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :user_id, :favbeach_id
end
