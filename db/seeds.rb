# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning up database..."
Hat.destroy_all
User.destroy_all
puts "Database cleaned"


User.create!(email: "gnome@gmail.com", password: ENV['PASSWORD'], first_name: "Pri" , last_name: "Finkler")
puts "Users created"

Hat.create!(
  style: 'Fedora',
  color: 'Black',
  price: 13,
  user_id: User.all.sample.id,
  image_url: '544DE114-4B7E-490C-8BE1-4526EE49412E_1_201_a.jpeg',
  description: 'Elevate your style with a touch of whimsy! Our gnome Fedora hats blend classic sophistication with playful charm, adding a dash of enchantment to any outfit. Step into a world where fashion meets fantasy!')

Hat.create!(
  style: 'Baseball Cap',
  color: 'Blue',
  price: 17,
  user_id: User.all.sample.id,
  image_url: 'DE25E51F-602B-4A0C-B1EF-4611209FFD87_1_201_a.jpeg',
  description: 'Score a home run for gnome style with our Gnome Baseball Hats! From garden strolls to gnome adventures, these hats blend comfort and cuteness for a winning look. Step up to the plate and hit a fashion grand slam!')

Hat.create(
  style: 'Sun Hat',
  color: 'Beige',
  price: 22,
  user_id: User.all.sample.id,
  image_url: 'CB31B690-83EE-4699-881C-F2655BD6B6FD_1_201_a.jpeg',
  description: 'Shade and style unite in our Gnome Sun Hats! Embrace sunny days with gnome flair as these hats keep you cool and charming. Whether tending to your gnome garden or exploring, radiate elegance while staying sun-smart!')

Hat.create(
  style: 'Beanie',
  color: 'Gray',
  price: 54,
  user_id: User.all.sample.id,
  image_url: '7F17BE41-F9E3-443A-8577-839F8027B082_1_201_a.jpeg',
  description: 'Top off your gnome-tastic look with our Gnome Beanie Hats! Infuse your style with a touch of woodland whimsy, keeping your noggin warm and your gnome spirit high. From frosty mornings to magical nights, these beanies are your ticket to gnome chic!')

Hat.create(
  style: 'Cowboy Hat',
  color: 'Brown',
  price: 4, user_id: User.all.sample.id,
  image_url: '19DC4100-2E39-4C4A-A531-DEFA775D5398_1_201_a.jpeg',
  description: 'Saddle up for gnome adventures with our Gnome Cowboy Hats! Rustle up a blend of wild west charm and whimsical magic as you explore the gnome frontier. From dusty trails to gnome rodeos, ride in style and let your inner cowboy gnome shine!')

Hat.create(
  style: 'Cowboy Hat',
  color: 'Brown',
  price: 4, user_id: User.all.sample.id,
  image_url: '19DC4100-2E39-4C4A-A531-DEFA775D5398_1_201_a.jpeg',
  description: 'Join the Gnome Patrol in style with our Gnome Police Hats! From gnome-sized investigations to keeping your gnome community safe, these hats add a touch of authority and charm to your look. Stand tall, stay vigilant, and let your inner gnome officer lead the way!')

puts "Hats created"
