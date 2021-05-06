# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# on commence par crée 5 villes aléatoirement
5.times do 
  city = City.create!(city_name: Faker::Address.city)
end

# on crée ensuite 20 chiens 
20.times do
  dog = Dog.create!(name: Faker::Creature::Dog.name, city_id: rand((City.first.id)..(City.last.id)))
end

# on crée a présent 10 promeneur de chiens 
10.times do
  dsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand((City.first.id)..(City.last.id)))
end

# on genere maintenant les promenades 
100.times do
  stroll = Stroll.create!(date: Faker::Date.in_date_period, place: Faker::Nation.capital_city, city_id: rand((City.first.id)..(City.last.id)))
end


puts " ET VOILA ! :) "