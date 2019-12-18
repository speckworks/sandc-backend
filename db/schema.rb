# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_18_213335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favbeaches", force: :cascade do |t|
    t.string "name"
    t.string "photo_1"
    t.string "photo_2"
    t.string "photo_3"
    t.decimal "lat"
    t.decimal "lng"
    t.string "ez4strollers"
    t.string "restrooms"
    t.string "dog_friendly"
    t.string "campground"
    t.string "bluff"
    t.string "tidepool"
    t.string "fishing"
    t.string "boating"
    t.string "bike_path"
    t.string "rky_shore"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "review"
    t.bigint "user_id"
    t.bigint "favbeach_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["favbeach_id"], name: "index_reviews_on_favbeach_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "userbeaches", force: :cascade do |t|
    t.string "name"
    t.string "favbeach_id"
    t.string "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reviews", "favbeaches"
  add_foreign_key "reviews", "users"
end
