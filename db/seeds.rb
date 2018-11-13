# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.find(3)
s = Store.create(name: "Salsa Shop", location: "Amsterdam", user: u)
s = Store.create(name: "Kashmir Coffeeshop", location: "Amsterdam", user: u, description: "Dankity dank kashmoney")
