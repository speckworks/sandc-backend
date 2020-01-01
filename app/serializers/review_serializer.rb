class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :review, :user_id, :beaches
end
