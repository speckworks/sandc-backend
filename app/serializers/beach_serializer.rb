class FavbeachSerializer < ActiveModel::Serializer
  attributes :id, :name, :photo_1, :photo_2, :photo_3, :lat, :lng, :ez4strollers,
  :restrooms, :campground, :dog_friendly, :bluff, :tidepool, :rky_shore, :fishing, :boating,
  :bike_path, :review_id
end
