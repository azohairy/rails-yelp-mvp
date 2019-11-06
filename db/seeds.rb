# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Creating restaurants..."

10.times do
  Restaurant.create(
    name: Faker::Food.dish,
    address: Faker::Address.country,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end

10.times do
  Review.create(
    content: Faker::Quote.yoda,
    rating: rand(0..5)
  )
end

puts "Done"
