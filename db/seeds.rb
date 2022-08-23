# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data..."
 10.times do 
    Student.create(name: Faker::Name.name, email: Faker::Internet.email, phone_no: Faker::Number.number(10))

    Schedule.create(title: Faker::Company.catch_phrase, date: Faker::Date.forward(60), time: Faker::Time.forward(23), meeting_link: Faker::Internet.url, description: Faker::Lorem.paragraph)

    Announcement.create(title: Faker::Company.bs, description: Faker::Lorem.paragraph)
 end

puts "Done seeding."
