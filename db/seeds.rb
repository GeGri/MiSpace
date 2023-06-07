 # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "faker"

puts "Cleaning database..."
User.destroy_all

#users
puts "Creating the user"

# file = URI.open("https://tse3.mm.bing.net/th?id=OIP.ZXmsrJLmj8Zr_Um2Gkv6aQHaI4&pid=Api")
# puts "got the picture"
user = User.new(name: "Tristan", email: "gjgrimm@gmx.de", password: "test123")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686049559/b2344430-b52f-4327-a75d-98954ffe3407_kkseel.jpg")
# user = User.new(name: "Bey", email: "bey@gmail.com", password: "test123")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# user.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686064795/kurt-cobain-in-1991_xs8tnx.jpg")
# user = User.new(name: "Kurt", email: "nevermind@nirvana.co.uk", password: "test123")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# user.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686049624/Screenshot_2023-06-06_at_12.06.58_ivp0fy.png")
# user = User.new(name: "Jay", email: "jay@jay.co.uk", password: "test123")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# user.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686065665/1140-liam-neeson-looking-to-side_p0m8kv.jpg")
# user = User.new(name: "Enrico", email: "Enrico.J@gmail.de", password: "test123")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# user.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686065588/madonna-tout-fbc9e67eeddf464facf49b437de81462_slvuce.jpg")
# user = User.new(name: "Norbert", email: "norbert@rippin.example", password: "m4newJ3ToPS")
# user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# user.save!

#spaces

puts "Creating the spaces"

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686064603/kevin-jarrett-Hr3MkDuz4Fs-unsplash_gvvazs.jpg")
space = Space.new(name: "Shed in Kreutzberg", address: "7 Boundary St, Kreutzberg E2 7JE", price: 5, description: "This great shed, is worth every penny. It's got lots of natural light. Dogs welcome", availability: true, user: user)
# space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

# file = URI.open("https://res.cloudinary.com/dfx8gzbl4/image/upload/v1686064603/kevin-jarrett-Hr3MkDuz4Fs-unsplash_gvvazs.jpg")
space = Space.new(name: "Field", address: "7 King St, Bristol BS2 7JE", price: 15, description: "We welcome everyone! This space is yours for £15 an hour.", availability: true, user: user)
# space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
space.save!

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# space = Space.new(name: "Field", address: "7 King St, Bristol BS2 7JE", price: 15, description: "We welcome everyone! This space is yours for £15 an hour.", availability: true, user: user)
# space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# space.save!

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# space = Space.new(name: "Hackett Group", address: "7 King St, Bristol BS2 7JE", price: 15, description: "Explicabo hic esse. Voluptatem ab voluptatem. Repellendus sapiente harum.", availability: true, user: user)
# space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# space.save!

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# space = Space.new(name: "Building Site", address: "Skyway, Kautzerchester, GA 83669", price: 15, description: "We welcome everyone! This space is yours for £15 an hour.", availability: true, user: user)
# space.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
# space.save!

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
