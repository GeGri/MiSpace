# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all

puts "Creating a User..."
tristan = {name: "Tristan", email: "gjgrimm@gmx.de", id: 1, password: "test123"}
user = User.create!(tristan)
puts "Created #{user.name}"


puts "Cleaning database..."
Space.destroy_all

puts "Creating spaces..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", price: 5, description: "Hello", availability: true, user_id: 1, id: 1}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", price: 4, description: "Hello", availability: true, user_id: 1, id: 2}

[dishoom, pizza_east].each do |attributes|
  space = Space.create!(attributes)
  puts "Created #{space.name}"
end
puts "Finished!"
