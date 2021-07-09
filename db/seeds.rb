require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..6).each_with_index do |a, i|
  r = RealEstate.create( name: Faker::Name.name, real_state_type: "house", street: Faker::Address.street_name, external_number: Faker::Address.building_number, neighborhood: "neighborhood #{a}", city: Faker::Address.city, country:  Faker::Address.country,  rooms: rand(1..10), bathrooms: rand(1..3) )
end

(1..6).each_with_index do |a, i|
  r = RealEstate.create( name: Faker::Name.name, real_state_type: "department", street: Faker::Address.street_name, external_number: Faker::Address.building_number, internal_number: Faker::Address.building_number, neighborhood: "neighborhood #{a}", city: Faker::Address.city, country:  Faker::Address.country,  rooms: rand(1..10), bathrooms: rand(1..3) )
end

(1..6).each_with_index do |a, i|
  r = RealEstate.create( name: Faker::Name.name, real_state_type: "land", street: Faker::Address.street_name, external_number: Faker::Address.building_number, neighborhood: "neighborhood #{a}", city: Faker::Address.city, country:  Faker::Address.country,  rooms: rand(1..10), bathrooms: rand(0..3) )
  p "r #{a} #{r.errors}"
end

(1..6).each_with_index do |a, i|
  r = RealEstate.create( name: Faker::Name.name, real_state_type: "commercial_ground", street: Faker::Address.street_name, external_number: Faker::Address.building_number, internal_number: Faker::Address.building_number,neighborhood: "neighborhood #{a}", city: Faker::Address.city, country:  Faker::Address.country,  rooms: rand(1..10), bathrooms: rand(0..3) )
end