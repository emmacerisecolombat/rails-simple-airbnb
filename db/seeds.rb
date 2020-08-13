# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts '🏡 Creating 5 fake flats...'
5.times do
  flat = Flat.new(
    name:               Faker::Name.name ,
    address:            Faker::Address.street_address,
    description:        Faker::ChuckNorris.fact,
    price_per_night:    Faker::Number.decimal(2),
    number_of_guests:   Faker::Number.between(1, 10)
  )
  flat.save!
end
puts 'Finished!'
