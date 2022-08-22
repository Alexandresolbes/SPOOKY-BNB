# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Listing.destroy_all
User.destroy_all

puts "User destroy"

User.create!(
  first_name: "Lounes",
  last_name: "Ait",
  email: "azerty@test.com",
  password: "test1234"
)

User.create!(
  first_name: "Alex",
  last_name: "Solbes",
  email: "test@test.com",
  password: "test1234"
)

User.create!(
  first_name: "Laura",
  last_name: "Latuillerie",
  email: "123@test.com",
  password: "test1234"
)

User.create!(
  first_name: "Isabel",
  last_name: "Lamim",
  email: "456@test.com",
  password: "test1234"
)

User.create!(
  first_name: "Alexis",
  last_name: "Stephan",
  email: "blablay@test.com",
  password: "test1234"
)

Listing.create(
  title: "Dracula's Mansion",
  description: "Discover Dracula's Home",
  address: "1 Vampire's Street, Transylvania",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Aokigahara Forest",
  description: "Set up your tent and meet yûreis in the most famous forest in Japan",
  address: "At the feet of mount Fuji, Japan",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)


Listing.create(
  title: "Sanatorium Simone Weber",
  description: "Visit the oldest haunted hospital in France",
  address: "Lay-St-Christophe, France",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Old Bunker of Schönberger Straße",
  description: "An old bunker which is now haunted by Nazis",
  address: "3 Schönberger Straße, Germany",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Red Onion Saloon",
  description: "Come and visit the former women who used to work there",
  address: "Klondike Alaska, USA",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Bhangarh's Fort",
  description: "Sleep and meet a Tantrik Black Mage",
  address: "Rajasthan, India",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Rasputin's House",
  description: "It was the home of most mystical person of Russian history",
  address: "64 Gorokhovaïa street Saint Petersburg, Russia",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)

Listing.create(
  title: "Egg Hill Church",
  description: "Enjoy your stay at one of the most haunted church of the world, beware of the pastor....",
  address: "Spring Hills Pennsylvania, USA",
  max_guests: rand(1..10),
  price_per_night: rand(20...500)
)