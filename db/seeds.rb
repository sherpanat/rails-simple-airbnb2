# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.destroy_all
puts 'All flats destroyed'

flats = [
          'Light & Spacious Garden Flat London',
          'Nice flat',
          'Shitty Flat',
          'Crotte flat',
          'Appartement lumineux',
          'Maison bruyante',
          'Une place en enfer'
        ]

addresses = [
          '10 Clifton Gardens London W9 1DT',
          '13 avenue à chier',
          '4 rue du vieux porc',
          '99 boulevard moncul',
          '12 rue lulu',
          '5 avenue du vieux shey',
          '55 cours porcinet'
        ]

descriptions = [
          'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
          'Tellement de la merde partout',
          'C\'est ici que vous trouverez votre bonheur',
          'Toi-même tu vas aimer mon gars',
          'C\'est ici que tout se passe',
          'Moi j\'aime quand on vient dans ma maison',
          '55 cours porcinet'
        ]

puts 'Creating 6 flats..'
for i in [*0..6]
  Flat.create!(
    name: flats[i],
    address: addresses[i],
    description: descriptions[i],
    price_per_night: rand(20..150),
    number_of_guests: rand(1..7)
  )
  puts "Flat #{i + 1} created.."
end
puts '...All flats created.'
