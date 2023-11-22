# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

5.times do
Flat.create!(
  name: "#{Faker::Verb.base} in #{Faker::Address.city} near #{Faker::Address.community}",
  address: Faker::Address.full_address,
  description: Faker::Lorem.sentence,
  price_x_night: Faker::Number.between(from: 30, to: 180),
  number_of_guests: Faker::Number.between(from: 1, to: 5)
)
end
