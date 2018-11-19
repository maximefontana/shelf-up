print "Cleaning DB..."
Booking.delete_all
puts "booking"
Store.delete_all
puts "store"
User.destroy_all
puts 'done'

puts "Growing the new seeds into big beautiful trees..."


print "Users Creating..."
# this is the user we will use to interact for demo purposes, mikey owns no stores
u1 = User.create!(
  username: "Mikey de Konijn",
  email: "mikey@mikey.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/mmudge"
  )

# these are the store owners we use
u2 = User.create!(
  username: "Marco Belanelli",
  email: "marco@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/krokrob"
  )

u3 = User.create!(
  username: "Maria de Friets",
  email: "maria@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/ClaraMorgen"
  )

u4 = User.create!(
  username: "Steve 'Dion' Jobs",
  email: "steve@shelf.com",
  password: "testing", owner: true,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/eschults"
  )

puts 'done'

# placeholder for the description, at 231 characters. Limit 250
lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
 ea commodo consequat.'

print "Stores Creating..."

s1 = Store.create!(
  name: "Bershka",
  location: "Amsterdam",
  user: u2,
  address: 'Nieuwendijk 209, 1012 MH Amsterdam',
  description: 'Bershka is large and with a well-kept appearance, from the shop windows
  to the arrangement of the clothing. Bershka chooses the best shopping areas in every
  city and establishes itself in prominent locations of the main shopping centers.',
  remote_photo_url: 'https://static.bershka.net/4/static/itxwebstandard/images/test/company/company01.jpg?20181116023830',
  category: 'Clothing',
  rating: 4,
  commission_amount: 27,
  rent_price_min: 10,
  rent_price_max: 70
  )

s2 = Store.create!(
  name: "Primark",
  location: "Amsterdam",
  user: u2,
  address: 'Damrak 77, 1012 LM Amsterdam',
  description: "Adored by fashion fans and value seekers alike Primark is widely
  established as the destination store for keeping up with the latest looks without
  breaking the bank.",
  remote_photo_url: "https://www.primark.com/-/media/store_images/primark%20amsterdam%20damrak.ashx?h=315&w=891&hash=DAB148A550067E1B94BDDEE51678B2BE263581A4",
  category: 'Clothing',
  rating: 3,
  commission_amount: 31,
  rent_price_min: 5,
  rent_price_max: 150
  )

s3 = Store.create!(
  name: "Score",
  location: "Amsterdam",
  user: u2,
  address: 'Nieuwendijk 209, 1012 MH Amsterdam',
  description: 'Score was founded in 1981 by owner / CEO Jan Peters. The first store
  was opened in Apeldoorn and Score has since grown into one of the most successful
  Multi Branded Jeans retail organizations.',
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipOGAS4h6fHBNvuGjctRZr2Ako8TQr0lMShVz2oy=w408-h306-k-no',
  category: 'Clothing',
  rating: 5,
  commission_amount: 30,
  rent_price_min: 7,
  rent_price_max: 80
  )

s4 = Store.create!(
  name: "Tulashi",
  location: "Amsterdam",
  address: 'Haarlemmerstraat 28, 1013 ER Amsterdam',
  user: u3,
  description: 'We concentrate on promotion of our own country and Nepali
  handmade products to encourage and develop the skill and lifestyle of the people
  from the hilly and mountainous regions from where the raw materials comes and the
  people who are manufacturing.',
  remote_photo_url: 'https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/416584_349007735161865_1348033079_o.jpg?_nc_cat=100&_nc_ht=scontent-ams3-1.xx&oh=12cf095f5a495420ff681dcc405db170&oe=5C84CA1C',
  category: 'Lifestyle',
  rating: 3,
  commission_amount: 35,
  rent_price_min: 3,
  rent_price_max: 30
  )

s5 = Store.create!(
  name: "Leder Paleis",
  location: "Amsterdam",
  address: 'Nieuwendijk 229, 1012 MH Amsterdam',
  user: u2,
  description: 'From influences from out the hearts of fashion like Italy,
  France, and the Netherlands with high-end materials and leather is mixed all in to
  the brand.',
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipMYOtATMpirHnfzK2ITPBhvrKbyT1F3DJYlvdyI=w408-h200-k-no-pi-0-ya130.45612-ro0-fo100',
  category: 'Clothing',
  rating: 4,
  commission_amount: 45,
  rent_price_min: 40,
  rent_price_max: 200
  )

s6 = Store.create!(
  name: "Søstrene Grene",
location: "Amsterdam",
  address: 'Nieuwendijk 219, 1012 MH Amsterdam',
  user: u3,
  description: 'A place where creative and inquisitive minds can feel
  right at home. Knud Cresten sets out to create a store concept that artfully
  combines music, beautiful product displays and storytelling.',
  remote_photo_url: 'https://indebuurt.nl/utrecht/wp-content/uploads/2018/06/sostrene-grene-utrecht.jpg',
  category: 'Art',
  rating: 4,
  commission_amount: 33,
  rent_price_min: 5,
  rent_price_max: 50)

s7 = Store.create!(
  name: "Ermenegildo Zegna",
location: "Amsterdam",
  address: 'Dam 1, 1012 JS Amsterdam',
  user: u3,
  description: "High-end retailer selling the namesake Italian label's
  apparel, accessories & fragrances for men.",
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipORLSTT8Q62izHxjaZLWLE08xyj8SscpMM2i0c4=w408-h229-k-no',
  category: 'Clothing',
  rating: 5,
  commission_amount: 40,
  rent_price_min: 20,
  rent_price_max: 150)

s8 = Store.create!(
  name: "Abraxas",
location: "Amsterdam",
  address: 'Jonge Roelensteeg 12-14, 1012 PL Amsterdam',
  user: u4,
  description: "Originally starting off as a night bar, the shop then
  transformed into a legendary hotspot for high quality products, friendly customer
  service and a stunningly beautiful interior, all for a truly classic Amsterdam Experience",
  remote_photo_url: 'http://abraxas.tv/images/locations-001.jpg',
  category: 'Interior Design',
  rating: 5,
  commission_amount: 25,
  rent_price_min: 5,
  rent_price_max: 50)

s9 = Store.create!(
  name: "The MM Gallery",
  location: "Amsterdam",
  address: 'Spuistraat 249, 1012 VP Amsterdam',
  user: u4,
  description: "Our products will give you energy to dance all night, or
  relax you after a stressful day. Others take you on a psychedelic journey through
  your mind, and then some recover you from it all. For every mood, the right mind food!",
  remote_photo_url: 'https://media-cdn.tripadvisor.com/media/photo-s/08/6a/70/d5/the-magic-mushroom-gallery.jpg',
  category: 'Pharmacy',
  rating: 5,
  commission_amount: 25,
  rent_price_min: 5,
  rent_price_max: 40)

s10 = Store.create!(
  name: "De Bierkoning",
  location: "Amsterdam",
  address: 'Paleisstraat 125, 1012 ZL Amsterdam',
  user: u4,
  description: "De Bierkoning has been the address for good beer in Amsterdam
  since 1985. The assortment in the store in the Paleisstraat includes more than 2000
  ifferent beers in every conceivable style from home and abroad.",
  remote_photo_url: 'https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/46137530_1822032041228913_4964196228045733888_n.jpg?_nc_cat=106&_nc_ht=scontent-ams3-1.xx&oh=06f54de02e33d54ade7fc3c43296c8c6&oe=5C7BBBD8',
  category: 'Food',
  rating: 5,
  commission_amount: 36,
  rent_price_min: 1,
  rent_price_max: 20)

s11 = Store.create!(
  name: "ROOR Shop Amsterdam",
  location: 'Amsterdam',
  address: 'Sint Nicolaasstraat 19, 1012 NJ Amsterdam',
  user: u4,
  description: "ROOR started out in 1995 founded by Martin Birzle, the
  philosophy behind ROOR is based on the finest glassblowing craftsmanship and
  extraordinairy artworks.",
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipNzyfwqvautjluVugqCdgtvDjhzP8s7aNEKbtMn=w408-h271-k-no',
  category: 'Art',
  rating: 4,
  commission_amount: 28,
  rent_price_min: 10,
  rent_price_max: 500
  )
puts 'done'

print 'Creating bookings...'
b1 = Booking.create!(
  price_per_unit: 15,
  quantity: 4,
  total_price: 60,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s3
  )

b2 = Booking.create!(
  price_per_unit: 6,
  quantity: 24,
  total_price: 144,
  name: "Craft Beers",
  category: "Food",
  user: u1,
  store: s10
  )

b3 = Booking.create!(
  price_per_unit: 67,
  quantity: 5,
  total_price: 335,
  name: "Leather Purse",
  category: "Clothing",
  user: u1,
  store: s5
  )

b4 = Booking.create!(
  price_per_unit: 50,
  quantity: 10,
  total_price: 500,
  name: "Charcoal art",
  category: "Art",
  user: u1,
  store: s11
  )

b5 = Booking.create!(
  price_per_unit: 24,
  quantity: 7,
  total_price: 168,
  name: "Bob Ross inspired tableaus",
  category: "Art",
  user: u1,
  store: s11
  )

puts 'done'

puts 'SEEDS IS GOOOOOOOD!'
