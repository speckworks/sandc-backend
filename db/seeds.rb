# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"harold")
r1 = Review.create(review:"It was freaking Aaaawesome.")

puts 'Fetching Beach Data...'
request_url = "https://api.coastal.ca.gov/access/v1/locations"
request = RestClient::Request.execute(
  method: :get,
  url: request_url)
  
  beaches = JSON.parse(request)
    
  beaches.each do |beach|
  Favbeach.create(
    name: beach["NameMobileWeb"],
    img: beach["Photo_1"],
    lat: beach["LATITUDE"],
    lng: beach["LONGITUDE"]
  )
end

puts "User, FavBeaches and Review are Good To Go."