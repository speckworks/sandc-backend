# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name:"harold")

b1 = Favbeach.create(name:"Manhattan Beach")

r1 = Review.create(review:"It was freaking Aaaawesome.")

puts "User, FavBeach and Review are Good To Go."