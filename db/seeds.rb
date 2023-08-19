# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."
Hat.destroy_all
puts "Database cleaned"

Hat.create!(style: 'Fedora', color: 'Black', price: 13, user_id: 1, image_url: '544DE114-4B7E-490C-8BE1-4526EE49412E_1_201_a.jpeg', description: 'I cool gnome, yes')
Hat.create!(style: 'Baseball Cap', color: 'Blue', price: 17, user_id: 1, image_url: 'DE25E51F-602B-4A0C-B1EF-4611209FFD87_1_201_a.jpeg', description: 'bla bla bla')
Hat.create(style: 'Sun Hat', color: 'Beige', price: 22, user_id: 1, image_url: 'CB31B690-83EE-4699-881C-F2655BD6B6FD_1_201_a.jpeg', description: 'hello booh yah')
Hat.create(style: 'Beanie', color: 'Gray', price: 54, user_id: 1, image_url: '7F17BE41-F9E3-443A-8577-839F8027B082_1_201_a.jpeg', description: 'I old very old gnome, yes')
Hat.create(style: 'Cowboy Hat', color: 'Brown', price: 4, user_id: 1, image_url: '19DC4100-2E39-4C4A-A531-DEFA775D5398_1_201_a.jpeg', description: 'testy gnomy gnomy')

puts "Hats created"
