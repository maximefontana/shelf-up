print "Cleaning DB..."
Booking.destroy_all
Store.destroy_all
User.destroy_all
puts 'done'

puts "Growing the new seeds into big beautiful trees..."


print "Users Creating..."
u1 = User.create!(username: "mikey", email: "mikey@mikey.com",
  password: "testing", owner: true)
u2 = User.create!(username: "marco", email: "marco@shelf.com", password: "testing")
u3 = User.create!(username: "maria", email: "maria@shelf.com", password: "testing")
u4 = User.create!(username: "steve", email: "steve@jobs.com", password: "testing")
puts 'done'

# placeholder for the description, at 231 characters. Limit 250
lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
 ea commodo consequat.'

print "Stores Creating..."
s1 = Store.create!(name: "Salsa Shop", location: "Amsterdam", user: u1, category: 'Culinary')
s2 = Store.create!(name: "Kashmir Coffeeshop", location: "Amsterdam",
  user: u2, description: "Dankity dank kashmoney", category: 'Jewelry')
s3 = Store.create!(name: "Dion's Funhouse", location: "Munich",
  user: u4, description: lorem, category: 'Other')
s4 = Store.create!(name: "Mikey's Workshop", location: "Cali yo",
  user: u1, description: lorem, category: 'Other')
s5 = Store.create!(name: "Bella's Steakhouse", location: "Buenos Aires",
  user: u2, description: lorem, category: 'Other')
s6 = Store.create!(name: "Maxime's Coffeeshop", location: "Paris",
  user: u2, description: lorem, category: 'Other')
s7 = Store.create!(name: "Toys R Us RIP", location: "Afterlife",
  user: u2, description: lorem, category: 'Culinary')
s8 = Store.create!(name: "Cafe ONS", location: "Amsterdam",
  user: u2, description: lorem, category: 'Culinary')
s9 = Store.create!(name: "Public Space", location: "Amsterdam",
  user: u2, description: lorem, category: 'Clothing')
s10 = Store.create!(name: "Albert Heijn", location: "Amsterdam",
  user: u2, description: lorem, category: 'Clothing')
s11 = Store.create!(name: "Arts Store", location: 'Amsterdam', user: u3)
puts 'done'

print 'Creating bookings...'
b1 = Booking.create!(price_per_unit: 5, quantity: 2, total_price: 10,
  name: "Jeans", category: "clothing", user: u2, store: s1)
b2 = Booking.create!(price_per_unit: 7, quantity: 4, total_price: 28,
  name: "Craft Beers", category: "Culinary", user: u1, store: s2)
b3 = Booking.create!(price_per_unit: 2, quantity: 200, total_price: 400,
  name: "Ice Cream", category: "Culinary", user: u1, store: s2)
b4 = Booking.create!(price_per_unit: 50, quantity: 50, total_price: 2500,
  name: "Charcoal art", category: "Art", user: u1, store: s11)
b5 = Booking.create!(price_per_unit: 10, quantity: 75, total_price: 750,
  name: "Bob Ross inspired tableaus", category: "Art", user: u1, store: s11)
puts 'done'

puts 'SEEDS IS GOOOOOOOD!'
