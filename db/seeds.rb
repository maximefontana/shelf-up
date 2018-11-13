# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Store.destroy_all

u1 = User.create(username: "mikey", email: "mikey@mikey.com", password: "testing")
u2 = User.create(username: "m&m", email: "m@m.com", password: "testing")

s1 = Store.create(name: "Salsa Shop", location: "Amsterdam", user: u1)
s2 = Store.create(name: "Kashmir Coffeeshop", location: "Amsterdam", user: u2, description: "Dankity dank kashmoney")

b1 = Booking.create(user_id: u1, store_id: s2, price_per_unit: 5, quantity: 2, total_price: 100, name: "no idea", category: "clothes")
b2 = Booking.create(user_id: u2, store_id: s1, price_per_unit: 7, quantity: 4, total_price: 150, name: "no idea", category: "food")
