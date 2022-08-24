# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts "Seeding data ..."
TechnicalMentor.create!(name: Faker::Name.name, email: Faker::Internet.email, phone_no: Faker::Number.number(digits: 10) )
puts "Done seeding!"