# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
gino = { name: 'Gino\'s Pizza', address: 'Champs-Elysées', phone_number: '+33 6 77 26 31 18', category: 'italian'}
etna =  { name: 'Pizza East', address: 'Courneuve', phone_number: '+33 6 77 26 31 21', category: 'italian' }
vepler = { name: 'Le Vepler', address: 'Place de Clichy', phone_number: '+33 6 77 26 31 24', category: 'belgian' }
orient = { name: 'L\'Orient D\'Or', address: 'Rue Richert', phone_number: '+33 6 77 26 31 27', category: 'chinese' }
ferme = { name: 'La Ferme de Saint Sebastien', phone_number: '+33 6 77 26 31 30', address: 'Charroux', category: 'french' }

[gino, etna, vepler, orient, ferme].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'


