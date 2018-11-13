# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all
User.destroy_all

u1 = User.create(username: "mikey", email: "mikey@mikey.com", password: "testing")

u2 = User.create(username: "m&m", email: "m@m.com", password: "testing")

s1 = Store.create(name: "Salsa Shop", location: "Amsterdam", user: u1)

s2 = Store.create(name: "Kashmir Coffeeshop", location: "Amsterdam", user: u2, description: "Dankity dank kashmoney")

b1 = Booking.create(price_per_unit: 5, quantity: 2, total_price: 100, name: "no idea", category: "clothes")
b1.user = u1
b1.store = s2
b1.save

b2 = Booking.create(price_per_unit: 7, quantity: 4, total_price: 150, name: "no idea", category: "food")
b2.user = u2
b2.store = s1
b2.save
