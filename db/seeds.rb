puts "Cleaning DB..."
Booking.destroy_all
Store.destroy_all
User.destroy_all
puts "Growing the new seeds into big beautiful trees..."


print "Users Creating..."
u1 = User.create!(username: "mikey", email: "mikey@mikey.com", password: "testing")

u2 = User.create!(username: "m&m", email: "m@m.com", password: "testing")
puts 'done'

# placeholder for the description, at 231 characters. Limit 250
lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
 ea commodo consequat.'

print "Stores Creating..."
s1 = Store.create!(name: "Salsa Shop", location: "Amsterdam", user: u1)
s2 = Store.create!(name: "Kashmir Coffeeshop", location: "Amsterdam",
  user: u2, description: "Dankity dank kashmoney")
s3 = Store.create!(name: "Dion's Funhouse", location: "Amsterdam",
  user: u2, description: lorem)
s4 = Store.create!(name: "Mikey's Workshop", location: "Amsterdam",
  user: u2, description: lorem)
s5 = Store.create!(name: "Bella's Steakhouse", location: "Amsterdam",
  user: u2, description: lorem)
s6 = Store.create!(name: "Maxime's Coffeeshop", location: "Amsterdam",
  user: u2, description: lorem)
s7 = Store.create!(name: "Toys R Us RIP", location: "Amsterdam",
  user: u2, description: lorem)
s8 = Store.create!(name: "Cafe ONS", location: "Amsterdam",
  user: u2, description: lorem)
s9 = Store.create!(name: "Public Space", location: "Amsterdam",
  user: u2, description: lorem)
s10 = Store.create!(name: "Albert Heijn", location: "Amsterdam",
  user: u2, description: lorem)
puts 'done'

b1 = Booking.create!(
  price_per_unit: 5,
  quantity: 2,
  total_price: 100,
  name: "no idea", # nice
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
