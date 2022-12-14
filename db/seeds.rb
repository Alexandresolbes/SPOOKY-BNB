# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "date"

Listing.destroy_all
User.destroy_all
puts "Listings destroy"
puts "Users destroy"

# ALL USERS

file_lounes = URI.open("https://resize.programme-television.ladmedia.fr/r/650,406/img/var/premiere/storage/images/tele-7-jours/diapos-tv/que-sont-devenus-les-acteurs-de-malcolm-4629756/hal/94988895-1-fre-FR/Hal.jpg")
lounes = User.new(
  first_name: "Lounes",
  last_name: "Ait",
  email: "lounes@test.com",
  password: "test123"
)
lounes.photo.attach(io: file_lounes, filename: "lounes.jpg", content_type: "image/jpg")
lounes.save!
p "Lounes created"

file_alex = URI.open("https://www.looper.com/img/gallery/the-untold-truth-of-magnum-p-i/l-intro-1643625830.jpg")
alex = User.new(
  first_name: "Alex",
  last_name: "Solbes",
  email: "alex@test.com",
  password: "test123"
)
alex.photo.attach(io: file_alex, filename: "alex.jpg", content_type: "image/jpg")
alex.save!
p "Alex created"

file_laura = URI.open("https://www.programme-tv.net/imgre/fit/~2~providerPerson~f2380573cb44b255b.jpg/300x300/quality/80/lucy-liu.jpg")
laura = User.new(
  first_name: "Laura",
  last_name: "Latuillerie",
  email: "laura@test.com",
  password: "test123"
)
laura.photo.attach(io: file_laura, filename: "laura.jpg", content_type: "image/jpg")
laura.save!
p "Laura created"

file_isabel = URI.open("https://imagens.brasil.elpais.com/resizer/Au1VcyxWxn1tw2GC_c90jrMWs-U=/1960x1470/cloudfront-eu-central-1.images.arcpublishing.com/prisa/676VZ3WHQY6LHM56STEZF27PIA.jpg")
isabel = User.new(
  first_name: "Isabel",
  last_name: "Lamim",
  email: "isabel@test.com",
  password: "test123"
)
isabel.photo.attach(io: file_isabel, filename: "isabel.png", content_type: "image/png")
isabel.save!
p "Isabel created"

p "All users created"

# ALL LISTINGS

file = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258367/development/1vag8xuf6rapg0drf949aaus5s5b.jpg")
file_2 = URI.open("https://a0.muscache.com/im/pictures/8fa09ffe-3e8d-43ac-8e00-c846db4d4da6.jpg?aki_policy=xx_large")
dracula = Listing.new(
  title: "Dracula's Mansion",
  description: "Discover Dracula's Home",
  address: "Strada General Traian Mo??oiu 24, Bran 507025, Romania",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
dracula.photos.attach(io: file, filename: "dracula.jpg", content_type: "image/jpg")
dracula.photos.attach(io: file_2, filename: "dracula_2.jpg", content_type: "image/jpg")
dracula.save!


file = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258432/development/e7h35qoycbqdysp0k6nvb9qd6icp.jpg")
file_2 = URI.open("https://static01.nyt.com/images/2012/10/24/blogs/20121024-lens-tenhooper-slide-QY1Y/20121024-lens-tenhooper-slide-QY1Y-jumbo.jpg")
aokigahara = Listing.new(
  title: "Aokigahara Forest",
  description: "Set up your tent and meet y??reis in the most famous forest in Japan",
  address: "Aokigahara, Japan",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
aokigahara.photos.attach(io: file, filename: "aokigahara.jpg", content_type: "image/jpg")
aokigahara.photos.attach(io: file_2, filename: "aokigahara_2.jpg", content_type: "image/jpg")
aokigahara.save!

file = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258538/development/0clkcb4ctz0bxj2suchmdwcl31n5.jpg")
file_2 = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258541/development/47klvej8hfk9h31hqtos77fo1rvx.jpg")
sanatorium = Listing.new(
  title: "Sanatorium Simone Weber",
  description: "Visit the oldest haunted hospital in France",
  address: "4 rue Professeur Montaut, 54690 Lay Saint Christophe",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
sanatorium.photos.attach(io: file, filename: "sanatorium.jpg", content_type: "image/jpg")
sanatorium.photos.attach(io: file_2, filename: "sanatorium_2.jpg", content_type: "image/jpg")
sanatorium.save!

file = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258657/development/r99ye97it784tq8q3t37iea3474u.jpg")
file_2 = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661258658/development/8cb1mkfcwc1dx56hnvk891jem3k8.jpg")
bunker = Listing.new(
  title: "Old Bunker of Sch??nberger Stra??e",
  description: "An old bunker which is now haunted by Nazis",
  address: "Sch??neberger Str. 23A, 10963 Berlin, Germany",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
bunker.photos.attach(io: file, filename: "bunker.jpg", content_type: "image/jpg")
bunker.photos.attach(io: file_2, filename: "bunker_2.jpg", content_type: "image/jpg")
bunker.save!

file = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661261692/development/7p9tr37sbfptpyzoc2dmgdlqijia.jpg")
file_2 = URI.open("https://res.cloudinary.com/laura-latuillerie/image/upload/v1661261693/development/3cba0oht0oluylryt5l2qce39l7a.jpg")
saloon = Listing.create(
  title: "Red Onion Saloon",
  description: "Come and visit the former women who used to work there",
  address: "201 Broadway, Skagway, AK 99840, United States",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
saloon.photos.attach(io: file, filename: "saloon.jpg", content_type: "image/jpg")
saloon.photos.attach(io: file_2, filename: "saloon_2.jpg", content_type: "image/jpg")
saloon.save!

file = URI.open("https://images.thrillophilia.com/image/upload/s--kByCpZwC--/c_fill,h_775,q_auto,w_1600/f_auto,fl_strip_profile/v1/images/photos/000/075/172/original/1538049429_8290945929_a325e8642a_o.jpg.jpg?1538049428")
file_2 = URI.open("https://static2.tripoto.com/media/filter/tst/img/295383/TripDocument/1495882303_dsc_0573.jpg")
fort = Listing.new(
  title: "Bhangarh's Fort",
  description: "Sleep and meet a Tantrik Black Mage",
  address: "Rajasthan, India",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
fort.photos.attach(io: file, filename: "fort.jpg", content_type: "image/jpg")
fort.photos.attach(io: file_2, filename: "fort_2.jpg", content_type: "image/jpg")
fort.save!

file = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/0b/2f/05/caption.jpg?w=1200&h=-1&s=1")
file_2 = URI.open("https://img.itinari.com/page/content/original/425fc866-e19c-478f-abf2-05e4bee16a72-trevel-rasha-zhzh.jpg?ch=DPR&dpr=2.625&w=994&s=b81e0beb398923582c6c8bcc4e80e263")
rasputin = Listing.new(
  title: "Rasputin's House",
  description: "It was the home of most mystical person of Russian history",
  address: "Gorokhovaya St, 64 Sankt-Peterburg, Russia, 191180",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
rasputin.photos.attach(io: file, filename: "rasputin.jpg", content_type: "image/jpg")
rasputin.photos.attach(io: file_2, filename: "rasputin_2.jpg", content_type: "image/jpg")
rasputin.save!

file = URI.open("http://2.bp.blogspot.com/-Mz3VMsQGyco/UpS_33LpegI/AAAAAAAAAPM/0L2B4UXPinM/s1600/IMG_2412.JPG")
file_2 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSWBcMVELpvaw1pg5S1YqcW4K6PglANXyy_pNSVsMHrz2D5lHwJ-9a8zDmCDTfWl3-MKo&usqp=CAU")
church = Listing.new(
  title: "Egg Hill Church",
  description: "Enjoy your stay at one of the most haunted church of the world, beware of the pastor....",
  address: "Spring Mills, Pennsylvania, USA",
  max_guests: rand(1..10),
  price_per_night: rand(20...500),
  user_id: User.all.sample.id
)
church.photos.attach(io: file, filename: "church.jpg", content_type: "image/jpg")
church.photos.attach(io: file_2, filename: "church_2.jpg", content_type: "image/jpg")
church.save!

p "Listing created !"
