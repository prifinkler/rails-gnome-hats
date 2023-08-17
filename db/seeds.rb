# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Hat.create!(style: 'Fedora', color: 'Black', price: 13, user_id: 1)
Hat.create!(style: 'Baseball Cap', color: 'Blue', price: 17, user_id: 1)
Hat.create(style: 'Sun Hat', color: 'Beige', price: 22, user_id: 1)
Hat.create(style: 'Beanie', color: 'Gray', price: 54, user_id: 1)
Hat.create(style: 'Cowboy Hat', color: 'Brown', price: 4, user_id: 1)
