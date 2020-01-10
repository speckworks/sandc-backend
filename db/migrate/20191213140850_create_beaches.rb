class CreateBeaches < ActiveRecord::Migration[6.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :photo_1
      t.string :photo_2
      t.string :photo_3
      t.decimal :lat
      t.decimal :lng
      t.string :ez4strollers
      t.string :restrooms
      t.string :dog_friendly
      t.string :campground
      t.string :bluff
      t.string :tidepool
      t.string :fishing
      t.string :boating
      t.string :bike_path
      t.string :rky_shore
      t.string :review_id
      t.timestamps
    end
  end
end
