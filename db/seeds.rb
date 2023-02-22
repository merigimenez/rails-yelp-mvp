# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clean the database in order not to duplicate every time we seed
Restaurant.destroy_all

# Creates Restaurants
dishoom = {
  name: "Dishoom",
  address: "7 Boundary St, London E2 7JE",
  category: 'belgian',
  phone_number: '654-736356'
}

pizza_east =  {
  name: "Pizza East",
  address: "56A Shoreditch High St, London E1 6PQ",
  category: 'italian',
  phone_number: '654-736357'
}

vinitus = {
  name: "Vinitus",
  address: "C. del Consell de Cent, 333, 08007 Barcelona",
  category: 'french',
  phone_number: '654-736358'
}

marchigiana = {
  name: "La Marchigiana Palmares",
  address: "Palmares Open Mall, RP82 3200, M5501 Godoy Cruz, Mendoza, Argentina",
  category: 'italian',
  phone_number: '654-736359'
}

happening = {
  name: "Happening",
  address: "Av. Alicia Moreau de Justo 310, Buenos Aires, Argentina",
  category: 'japanese',
  phone_number: '654-736350'
}

restaurants = [dishoom, pizza_east, vinitus, marchigiana, happening]

restaurants.each do |element|
  restaurant = Restaurant.create!(element)
  puts "Created #{restaurant.name}"
end
