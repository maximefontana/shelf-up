puts "Cleaning DB..."
Booking.destroy_all
Store.destroy_all
User.destroy_all
puts "Growing the new seeds into big beautiful trees..."


u1 = User.create!(username: "mikey", email: "mikey@mikey.com", password: "testing")

u2 = User.create!(username: "m&m", email: "m@m.com", password: "testing")
puts "Users Created..."
s1 = Store.create!(name: "Salsa Shop", location: "Amsterdam", user: u1)

s2 = Store.create!(name: "Kashmir Coffeeshop", location: "Amsterdam", user: u2, description: "Dankity dank kashmoney")
puts "Stores Created..."

b1 = Booking.create!(
  price_per_unit: 5,
  quantity: 2,
  total_price: 100,
  name: "no idea",
  category: "clothes",
  user: u1,
  store: s1
  )

b1.save
puts "First booking created..."

b2 = Booking.create!(
  price_per_unit: 7,
  quantity: 4,
  total_price: 150,
  name: "no idea",
  category: "food",
  user: u2,
  store: s2
  )

b2.save
puts "Second booking done, SEEDS IS GOOOOOOOD!"
