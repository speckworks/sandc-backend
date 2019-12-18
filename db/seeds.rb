# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"harold")

puts 'Fetching Beach Data...'
request_url = "https://api.coastal.ca.gov/access/v1/locations"
request = RestClient::Request.execute(
  method: :get,
  url: request_url)
  
  beaches = JSON.parse(request)
    
  beaches.each do |beach|
  Favbeach.create(
    name:beach["NameMobileWeb"],
    photo_1:beach["Photo_1"],
    photo_2:beach["Photo_2"],
    photo_3:beach["Photo_3"],
    lat:beach["LATITUDE"].to_f,
    lng:beach["LONGITUDE"].to_f,
    ez4strollers:beach["EZ4STROLLERS"],
    restrooms:beach["RESTROOMS"],
    dog_friendly:beach["DOG_FRIENDLY"],
    campground:beach["CAMPGROUND"],
    bluff:beach["BLUFF"],
    tidepool:beach["TIDEPOOL"],
    fishing:beach["FISHING"],
    boating:beach["BOATING"],
    bike_path:beach["BIKE_PATH"],
    rky_shore:beach["RKY_SHORE"]
  )
end

puts "User, FavBeaches and Review are Good To Go."