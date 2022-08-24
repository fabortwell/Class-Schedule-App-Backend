# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "🌱 Seeding data..."

Comment.create!(content: "Quite informative info", likes: 0)
Comment.create!(content: "Yay! exactly what I wanted to hear", likes: 0)
Comment.create!(content: "Informative piece", likes: 0)
Comment.create!(content: "Thanks for informing us", likes: 1)
Comment.create!(content: "Great information!", likes: 0)
Comment.create!(content: "Cool stuff", likes: 3)
Comment.create!(content: "What next?", likes: 5)
Comment.create!(content: "Kindly clarify", likes: 5)
Comment.create!(content: "yay!", likes: 13)

 10.times do 
    Student.create(name: Faker::Name.name, email: Faker::Internet.email, phone_no: Faker::Number.number(10))

    Schedule.create(title: Faker::Company.catch_phrase, date: Faker::Date.forward(60), time: Faker::Time.forward(23), meeting_link: Faker::Internet.url, description: Faker::Lorem.paragraph)

    Announcement.create(title: Faker::Company.bs, description: Faker::Lorem.paragraph)
 end

puts "✅ Done seeding!"

