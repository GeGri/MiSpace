 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning database..."
User.destroy_all

#users
puts "Creating the user"

file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
puts "got the picture"
user = User.new(name: "Tristan", email: "gjgrimm@gmx.de", password: "test123")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686049559/b2344430-b52f-4327-a75d-98954ffe3407_kkseel.jpg")
user = User.new(name: "Bey", email: "bey@gmail.com", password: "test123")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686064795/kurt-cobain-in-1991_xs8tnx.jpg")
user = User.new(name: "Kurt", email: "nevermind@nirvana.co.uk", password: "test123")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686049624/Screenshot_2023-06-06_at_12.06.58_ivp0fy.png")
user = User.new(name: "Jay", email: "jay@jay.co.uk", password: "test123")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686065665/1140-liam-neeson-looking-to-side_p0m8kv.jpg")
user = User.new(name: "Enrico", email: "Enrico.J@gmail.de", password: "test123")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686065588/madonna-tout-fbc9e67eeddf464facf49b437de81462_slvuce.jpg")
user = User.new(name: "Norbert", email: "norbert@rippin.example", password: "m4newJ3ToPS")
user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

#spaces

puts "Creating the spaces"

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686064603/kevin-jarrett-Hr3MkDuz4Fs-unsplash_gvvazs.jpg")
space = Space.new(name: "Shed in Kreutzberg", address: "7 Boundary St, Kreutzberg E2 7JE", price: 5, description: "This great shed, is worth every penny. It's got lots of natural light. Dogs welcome", availability: true, user: user)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686137870/ales-krivec-4miBe6zg5r0-unsplash_g1wrhx.jpg")
space = Space.new(name: "Field", address: "7 King St, Bristol BS2 7JE", price: 15, description: "We welcome everyone! This space is yours for £15 an hour.", availability: true, user: user)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1685870261/abigail-keenan-8-s5QuUBtyM-unsplash_athxsz.jpg")
space = Space.new(name: "My Local Football Pitch", address: "98 RUE, Chem. de la Pièce Audrain, 44340 Saint-Jean-de-Boiseau, France", price: 10, description: "My local football pitch is available for hire, for football parties, for games, or for general fun. We’ve had some great times here and would love to share. ⚽️", availability: true, user: user)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1685700687/samples/landscapes/nature-mountains.jpg")
space = Space.new(name: "Nature Mountains", address: "Petříkovice 86, 541 03 Trutnov, Czechia", price: 15, description: "We have boats! & trees! & everything you could possibly want for a party. All we ask is that you leave our space as you found it.", availability: true, user: user)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686133232/hermes-rivera-eN1qRyrF-U0-unsplash_dbdsfh.jpg")
space = Space.new(name: "Gorgeous Building", address: "Via Autostrada Sa 2 Del Mediterrsneo, 87010 Frascineto CS, Italy", price: 5, description: "Feel free to make as much mess as you like. Great for big parties, and late night ones too. This building can be found in the middle of town as is super accessible via train, bus, car and tube. Enjoy! 🥂😈🧌🕺🏿", availability: true, user: user)
space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

# 5.times do
#   name = Faker::Company.name
#   address = Faker::Address.full_address
#   price = Faker::Number.between(from: 50, to: 500)
#   description = Faker::Lorem.paragraph(sentence_count: 3)

#   puts "Name: #{name}, Address: #{address}, Price: #{price}, Description: #{description}"
# end

# puts "Cleaning database..."
# User.destroy_all

#puts "Creating a User..."
# tristan = {name: "Tristan", email: "gjgrimm@gmx.de", password: "test123"}
# user = User.create!(tristan)
# puts "Created #{user.name}"


# puts "Cleaning database..."
# Space.destroy_all

# puts "Creating spaces..."
# dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", price: 5, description: "Hello", availability: true, user: user}
# pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 4, description: "Hello", availability: true, user: user}

# [dishoom, pizza_east].each do |attributes|
#  space = Space.create!(attributes)
#  puts "Created #{space.name}"
# end
# puts "Finished!"
