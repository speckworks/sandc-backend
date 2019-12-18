class UserbeachSerializer < ActiveModel::Serializer
  attributes :id, :name, :favbeach_id, :user_id
end
