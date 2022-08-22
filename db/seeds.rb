# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding data..."
 10.times do 
    Student.create(name: faker.name, email: faker.internet.email(), phone_no: faker.phone.number('07-##-###-###'))
 end
puts "Done seeding."
