# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

puts "Seeding data ..."
name = Faker::Name.unique.name
password = Faker::Alphanumeric.alphanumeric(number: 10)
email = Faker::Internet.email
phone_no = Faker::Number.number(no)
TechnicalMentor.create(name: name, password: password, email: email, phone_no: phone_no )

puts "Done seeding!"