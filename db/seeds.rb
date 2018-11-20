print "Cleaning DB..."
Booking.destroy_all
Store.destroy_all
User.destroy_all
puts 'done'

sleep(0.5)
puts "Growing the new seeds into big beautiful trees..."
sleep(0.5)


print "Users Creating..."
# this is the user we will use to interact for demo purposes, mikey owns no stores

# entrepreneurs
u1 = User.create!(
  username: "Mikey de Konijn",
  email: "mikey@mikey.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/mmudge"
  )
u2 = User.create!(
  username: "Frank Bekker",
  email: "frank@shelf.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://images.pexels.com/photos/334029/pexels-photo-334029.jpeg?auto=compress&cs=tinysrgb&h=350"
  )
u3 = User.create!(
  username: "John Deen",
  email: "john@shelf.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://images.pexels.com/photos/839011/pexels-photo-839011.jpeg?auto=compress&cs=tinysrgb&h=350"
  )
u4 = User.create!(
  username: "Max Maxime",
  email: "max@max.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/maximefontana"
  )
u5 = User.create!(
  username: "Johnny Cash",
  email: "johnny@shelf.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/random"
  )
u6 = User.create!(
  username: "Steve Deen",
  email: "steve@shelf.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://kitt.lewagon.com/placeholder/users/random"
  )

# store owners
u7 = User.create!(
  username: "Marco Belanelli",
  email: "marco@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://images.pexels.com/photos/213117/pexels-photo-213117.jpeg?auto=compress&cs=tinysrgb&h=350"
  )

u8 = User.create!(
  username: "Maria de Friets",
  email: "maria@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://images.pexels.com/photos/1036622/pexels-photo-1036622.jpeg?auto=compress&cs=tinysrgb&h=350"
  )
u9 = User.create!(
  username: "Rebecca Lee",
  email: "rlee@shelf.com",
  password: "testing",
  owner: false,
  remote_photo_url: "https://images.pexels.com/photos/756453/pexels-photo-756453.jpeg?auto=compress&cs=tinysrgb&h=350"
  )

u10 = User.create!(
  username: "Robert Hogerwaard",
  email: "robert@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://images.pexels.com/photos/936072/pexels-photo-936072.jpeg?auto=compress&cs=tinysrgb&h=350"
  )

u11 = User.create!(
  username: "Anne-Marije Lanjouw",
  email: "aml@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://images.pexels.com/photos/935803/pexels-photo-935803.jpeg?auto=compress&cs=tinysrgb&h=350"
  )

u12 = User.create!(
  username: "Daantje Ester",
  email: "daantje@shelf.com",
  password: "testing",
  owner: true,
  remote_photo_url: "https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg?auto=compress&cs=tinysrgb&h=350"
  )
puts 'done'
sleep(0.5)

# placeholder for the description, at 231 characters. Limit 250
lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
 ea commodo consequat.'

print "Stores Creating..."

# shops
s1 = Store.create!(
  name: "Bershka",
  location: "Amsterdam",
  user: u7,
  address: 'Nieuwendijk 209, Amsterdam',
  description: 'Bershka is large and with a well-kept appearance, from the shop windows
  to the arrangement of the clothing. Bershka chooses the best shopping areas in every
  city and establishes itself in prominent locations of the main shopping centers.',
  remote_photo_url: 'https://static.bershka.net/4/static/itxwebstandard/images/test/company/company01.jpg?20181116023830',
  category: 'Clothing',
  rating: 4,
  commission_amount: 27,
  rent_price_min: 10,
  rent_price_max: 70,
  rent_time: 30,
  link: "www.bershka.com"
  )
s2 = Store.create!(
  name: "Primark",
  location: "Amsterdam",
  user: u8,
  address: 'Damrak 77, Amsterdam',
  description: "Adored by fashion fans and value seekers alike Primark is widely
  established as the destination store for keeping up with the latest looks without
  breaking the bank.",
  remote_photo_url: "https://www.primark.com/-/media/store_images/primark%20amsterdam%20damrak.ashx?h=315&w=891&hash=DAB148A550067E1B94BDDEE51678B2BE263581A4",
  category: 'Clothing',
  rating: 3,
  commission_amount: 31,
  rent_price_min: 5,
  rent_price_max: 150,
  rent_time: 40,
  link: "www.primark.com"
  )
s3 = Store.create!(
  name: "Score",
  location: "Amsterdam",
  user: u9,
  address: 'Nieuwendijk 209, Amsterdam',
  description: 'Score was founded in 1981 by owner / CEO Jan Peters. The first store
  was opened in Apeldoorn and Score has since grown into one of the most successful
  Multi Branded Jeans retail organizations.',
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipOGAS4h6fHBNvuGjctRZr2Ako8TQr0lMShVz2oy=w408-h306-k-no',
  category: 'Clothing',
  rating: 2,
  commission_amount: 30,
  rent_price_min: 7,
  rent_price_max: 80,
  rent_time: 20,
  link: "www.score.com"
  )
s4 = Store.create!(
  name: "Søstrene Grene",
location: "Amsterdam",
  address: 'Nieuwendijk 219, Amsterdam',
  user: u10,
  description: 'A place where creative and inquisitive minds can feel
  right at home. Knud Cresten sets out to create a store concept that artfully
  combines music, beautiful product displays and storytelling.',
  remote_photo_url: 'https://indebuurt.nl/utrecht/wp-content/uploads/2018/06/sostrene-grene-utrecht.jpg',
  category: 'Art',
  rating: 4,
  commission_amount: 33,
  rent_price_min: 5,
  rent_price_max: 50,
  rent_time: 30,
  link: "www.sostrene.com"
  )
s5 = Store.create!(
  name: "Ermenegildo Zegna",
location: "Amsterdam",
  address: 'Dam 1, Amsterdam',
  user: u11,
  description: "High-end retailer selling the namesake Italian label's
  apparel, accessories & fragrances for men.",
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipORLSTT8Q62izHxjaZLWLE08xyj8SscpMM2i0c4=w408-h229-k-no',
  category: 'Clothing',
  rating: 5,
  commission_amount: 40,
  rent_price_min: 20,
  rent_price_max: 150,
  rent_time: 15,
  link: "www.zegna.com"
  )
s6 = Store.create!(
  name: "Abraxas",
location: "Amsterdam",
  address: 'Jonge Roelensteeg 12-14, Amsterdam',
  user: u12,
  description: "Originally starting off as a night bar, the shop then
  transformed into a legendary hotspot for high quality products, friendly customer
  service and a stunningly beautiful interior, all for a truly classic Amsterdam Experience",
  remote_photo_url: 'http://abraxas.tv/images/locations-001.jpg',
  category: 'Interior Design',
  rating: 3,
  commission_amount: 25,
  rent_price_min: 5,
  rent_price_max: 50,
  rent_time: 10,
  link: "www.abraxas.com"
  )
s7 = Store.create!(
  name: "De Bierkoning",
  location: "Amsterdam",
  address: 'Paleisstraat 125, Amsterdam',
  user: u7,
  description: "De Bierkoning has been the address for good beer in Amsterdam
  since 1985. The assortment in the store in the Paleisstraat includes more than 2000
  ifferent beers in every conceivable style from home and abroad.",
  remote_photo_url: 'https://scontent-ams3-1.xx.fbcdn.net/v/t1.0-9/46137530_1822032041228913_4964196228045733888_n.jpg?_nc_cat=106&_nc_ht=scontent-ams3-1.xx&oh=06f54de02e33d54ade7fc3c43296c8c6&oe=5C7BBBD8',
  category: 'Food',
  rating: 5,
  commission_amount: 36,
  rent_price_min: 1,
  rent_price_max: 20,
  rent_time: 30,
  link: "www.de-bierkoning.com"
  )
s8 = Store.create!(
  name: "ROOR Shop Amsterdam",
  location: 'Amsterdam',
  address: 'Sint Nicolaasstraat 19, Amsterdam',
  user: u7,
  description: "ROOR started out in 1995 founded by Martin Birzle, the
  philosophy behind ROOR is based on the finest glassblowing craftsmanship and
  extraordinairy artworks.",
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipNzyfwqvautjluVugqCdgtvDjhzP8s7aNEKbtMn=w408-h271-k-no',
  category: 'Art',
  rating: 4,
  commission_amount: 28,
  rent_price_min: 10,
  rent_price_max: 500,
  rent_time: 60,
  link: "www.roor.com"
  )
s9 = Store.create!(
  name: "Home Sweet Home",
  location: 'Amsterdam',
  address: 'Van Woustraat 138, Amsterdam',
  user: u8,
  description: "Come in and find your next cozy designer interior! We are
  located in the hip DePijp Area and have everything ranging from carpets to candles.",
  remote_photo_url: 'https://images.pexels.com/photos/415359/pexels-photo-415359.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Interior Design',
  rating: 5,
  commission_amount: 35,
  rent_price_min: 10,
  rent_price_max: 500,
  rent_time: 30,
  link: "www.hsh.com"
  )
s10 = Store.create!(
  name: "Larry's Pub",
  location: 'Amsterdam',
  address: 'Lange Leidsedwarsstraat 70B8, Amsterdam',
  user: u9,
  description: "Larry's Pub has been the go to pub for young and old since it was
  opened in 2005. We present new beers every tuesday of the month and we have a lunch menu!",
  remote_photo_url: 'https://images.pexels.com/photos/34650/pexels-photo.jpg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 4,
  commission_amount: 33,
  rent_price_min: 3.50,
  rent_price_max: 7,
  rent_time: 40,
  link: "www.larryspub.com"
  )
s11 = Store.create!(
  name: "Rescon MEN",
  location: 'Amsterdam',
  address: 'Laurierhof 50, Amsterdam',
  user: u10,
  description: "We at Rescon know what the gentleman of today needs to create the
  ultimate look. Our shoes tailored in the shop are famous in and arround the city of Amsterdam.",
  remote_photo_url: 'https://images.pexels.com/photos/247321/pexels-photo-247321.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Clothes',
  rating: 5,
  commission_amount: 12,
  rent_price_min: 75,
  rent_price_max: 1000,
  rent_time: 30,
  link: "www.rescon.com"
  )
s12 = Store.create!(
  name: "Burning Riders",
  location: 'Amsterdam',
  address: 'Oudezijds Voorburgwal 50HS, Amsterdam',
  user: u11,
  description: "Find the best biking equipment with the help of our experienced
  employees. We have provided the best gear for more than 30 years!",
  remote_photo_url: 'https://images.pexels.com/photos/132682/pexels-photo-132682.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Lifestyle',
  rating: 4,
  commission_amount: 25,
  rent_price_min: 10,
  rent_price_max: 180,
  rent_time: 20,
  link: "www.burningriders.com"
  )
s13 = Store.create!(
  name: "Rausch Sportsbar",
  location: 'Amsterdam',
  address: 'Leidseplein 5, Amsterdam',
  user: u12,
  description: "At Rausch we show every football match and every snooker tournament on our 5 flat screens.",
  remote_photo_url: 'https://images.pexels.com/photos/274192/pexels-photo-274192.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 3,
  commission_amount: 33,
  rent_price_min: 10,
  rent_price_max: 500,
  rent_time: 30,
  link: "www.raush.com"
  )
s14 = Store.create!(
  name: "Café Dexter",
  location: 'Amsterdam',
  address: 'Herengracht 148, Amsterdam',
  user: u7,
  description: "Café Dexter provides a laid back atmosphere for people who enjoy a good cocktail",
  remote_photo_url: 'https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 2,
  commission_amount: 28,
  rent_price_min: 5,
  rent_price_max: 100,
  rent_time: 30,
  link: "www.dextercafe.com"
  )
s15 = Store.create!(
  name: "Mundo Nuovo Designs",
  location: 'Amsterdam',
  address: 'Rozengracht 92II, Amsterdam',
  user: u8,
  description: "Muondo Nuovo sells an assorted selection of crafting supplies with emphasis on jewlery making supplies.
  Our designs are made by the award winning Julietta Hansen.",
  remote_photo_url: 'https://images.pexels.com/photos/301703/pexels-photo-301703.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Art',
  rating: 5,
  commission_amount: 40,
  rent_price_min: 50,
  rent_price_max: 120,
  rent_time: 30,
  link: "www.mundo-design.com"
  )
s16 = Store.create!(
  name: "Antiquities Maria",
  location: 'Amsterdam',
  address: 'Johannes Vermeerstraat 13, Amsterdam',
  user: u9,
  description: "Our small Antiquities store has specialized in buying and selling watches, furniture and decoration.",
  remote_photo_url: 'https://images.pexels.com/photos/678248/pexels-photo-678248.png?auto=compress&cs=tinysrgb&h=350',
  category: 'Art',
  rating: 2,
  commission_amount: 15,
  rent_price_min: 60,
  rent_price_max: 600,
  rent_time: 40,
  link: "www.maria-anqitues.com"
  )
s17 = Store.create!(
  name: "Little Italy Bakery",
  location: 'Amsterdam',
  address: 'Sint Nicolaasstraat 19, Amsterdam',
  user: u10,
  description: "Come in and find the best breads made by our traditional italian baker Giovanni!",
  remote_photo_url: 'https://images.pexels.com/photos/1047458/pexels-photo-1047458.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 5,
  commission_amount: 35,
  rent_price_min: 2,
  rent_price_max: 15,
  rent_time: 15,
  link: "www.bakery.com"
  )
s18 = Store.create!(
  name: "Craft Space",
  location: 'Amsterdam',
  address: 'Van Baerlestraat 19, Amsterdam',
  user: u11,
  description: "Craft Space is a coworking space/shop that sells the work of their inhouse artist.
  In here you will find detailed painting, african woodwork and even traditionally made instruments",
  remote_photo_url: 'https://images.pexels.com/photos/848205/pexels-photo-848205.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Art',
  rating: 4,
  commission_amount: 40,
  rent_price_min: 10,
  rent_price_max: 500,
  rent_time: 20,
  link: "www.craft-space.com"
  )
s19 = Store.create!(
  name: "Deedee Shoes",
  location: 'Amsterdam',
  address: 'Van Woustraat 34, Amsterdam',
  user: u12,
  description: "We have a large assortment of modern design womens shoes with a large windowfront.",
  remote_photo_url: 'https://images.pexels.com/photos/1020372/pexels-photo-1020372.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Art',
  rating: 4,
  commission_amount: 20,
  rent_price_min: 45,
  rent_price_max: 75,
  rent_time: 30,
  link: "www.deedeeshoes.com"
  )
s20 = Store.create!(
  name: "Sunny Side",
  location: 'Amsterdam',
  address: 'Govert Flinckstraat 175, Amsterdam',
  user: u7,
  description: "Minimalistic designs with maximum style. Sunny Sides brand sunglasses
  always look great on you. Promise.",
  remote_photo_url: 'https://images.pexels.com/photos/704241/pexels-photo-704241.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Lifestyle',
  rating: 3,
  commission_amount: 25,
  rent_price_min: 45,
  rent_price_max: 160,
  rent_time: 30,
  link: "www.sunny-side.com"
  )
s21 = Store.create!(
  name: "A&K Costumes",
  location: 'Amsterdam',
  address: 'Wibautstraat 42, Amsterdam',
  user: u8,
  description: "Be anyone or anything you like! We have a large variety of costumes for young and old!",
  remote_photo_url: 'https://images.pexels.com/photos/607817/pexels-photo-607817.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Clothes',
  rating: 4,
  commission_amount: 20,
  rent_price_min: 20,
  rent_price_max: 75,
  rent_time: 30,
  link: "www.a&k.com"
  )
s22 = Store.create!(
  name: "Mint & Chip Gelateria",
  location: 'Amsterdam',
  address: 'Derde Oosterparkstraat 201, Amsterdam',
  user: u9,
  description: "Mint & Chip has the mission to bring quality icecream to your neighbourhood.
  We sell over 20 flavors and a variety of cakes and other deserts. Come by anytime!",
  remote_photo_url: 'https://images.pexels.com/photos/3631/summer-dessert-sweet-ice-cream.jpg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 5,
  commission_amount: 33,
  rent_price_min: 3,
  rent_price_max: 15,
  rent_time: 10,
  link: "www.mint&chip.com"
  )
s23 = Store.create!(
  name: "Brother Bear",
  location: 'Amsterdam',
  address: 'Conradstraat 6, Amsterdam',
  user: u10,
  description: "Brother Bear is the hotspot for beer lovers and brewers. Located close to
  Amsterdam Central Station we offer lunch & dinner and tours through the former brewery building. ",
  remote_photo_url: 'https://images.pexels.com/photos/681847/pexels-photo-681847.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 4,
  commission_amount: 40,
  rent_price_min: 3,
  rent_price_max: 8,
  rent_time: 7,
  link: "www.brother-bear.com"
  )

# brands
s24 = Store.create!(
  name: "Leder Paleis",
  location: "Amsterdam",
  address: 'Nieuwendijk 229, Amsterdam',
  user: u1,
  description: 'From influences from out the hearts of fashion like Italy,
  France, and the Netherlands with high-end materials and leather is mixed all in to
  the brand.',
  remote_photo_url: 'https://lh5.googleusercontent.com/p/AF1QipMYOtATMpirHnfzK2ITPBhvrKbyT1F3DJYlvdyI=w408-h200-k-no-pi-0-ya130.45612-ro0-fo100',
  category: 'Clothing',
  rating: 4,
  commission_amount: 45,
  rent_price_min: 40,
  rent_price_max: 200,
  brand: true,
  link: "instagram.com/leders-paleis"
  )
s25 = Store.create!(
  name: "Tulashi",
  location: "Amsterdam",
  address: 'Haarlemmerstraat 28, Amsterdam',
  user: u2,
  description: 'We concentrate on promotion of our own country and Nepali
  handmade products to encourage and develop the skill and lifestyle of the people
  from the hilly and mountainous regions from where the raw materials comes and the
  people who are manufacturing.',
  remote_photo_url: 'https://scontent-ams3-1.xx.fbcdn.net/v/t31.0-8/416584_349007735161865_1348033079_o.jpg?_nc_cat=100&_nc_ht=scontent-ams3-1.xx&oh=12cf095f5a495420ff681dcc405db170&oe=5C84CA1C',
  category: 'Art',
  rating: 3,
  commission_amount: 35,
  rent_price_min: 3,
  rent_price_max: 30,
  brand: true,
  link: "instagram.com/tulashi"
  )
s26 = Store.create!(
  name: "The MM Gallery",
  location: "Amsterdam",
  address: 'Spuistraat 249, Amsterdam',
  user: u3,
  description: "Our products will give you energy to dance all night, or
  relax you after a stressful day. Others take you on a psychedelic journey through
  your mind, and then some recover you from it all. For every mood, the right mind food!",
  remote_photo_url: 'https://media-cdn.tripadvisor.com/media/photo-s/08/6a/70/d5/the-magic-mushroom-gallery.jpg',
  category: 'Pharmacy',
  rating: 5,
  commission_amount: 25,
  rent_price_min: 5,
  rent_price_max: 40,
  brand: true,
  link: "instagram.com/mm-gallery"
  )
s27 = Store.create!(
  name: "Tap Tap Tap!",
  location: 'Amsterdam',
  address: 'Warmoesstraat 13IA, Amsterdam',
  user: u4,
  description: "Over 45 beers and more to come for our beer lovers and soon to be enthusiast!
  Our bar is attached to the Hela-Brewery close to Amsterdam Central Station.
  Newcomer of the month tasting every first tuesday!",
  remote_photo_url: 'https://images.pexels.com/photos/1400255/pexels-photo-1400255.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 2,
  commission_amount: 45,
  rent_price_min: 3,
  rent_price_max: 15,
  brand: true,
  link: "instagram.com/taptaptap"
  )
s28 = Store.create!(
  name: "Aviator Skins",
  location: 'Amsterdam',
  address: 'Kalverstraat 120, Amsterdam',
  user: u5,
  description: "The coolest leather Jackets in town. We guarantee you'll never
  be cold or out of style with our timeless designs.",
  remote_photo_url: 'https://images.pexels.com/photos/207300/pexels-photo-207300.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Cloting',
  rating: 4,
  commission_amount: 20,
  rent_price_min: 80,
  rent_price_max: 500,
  brand: true,
  link: "instagram.com/aviator-skins"
  )
s29 = Store.create!(
  name: "Drinking Buddies",
  location: 'Amsterdam',
  address: 'Singel 194, Amsterdam',
  user: u6,
  description: "We have the biggest assortment of softdrinks and alcoholics.
  Our attractive prices make us the go to place for event catering",
  remote_photo_url: 'https://images.pexels.com/photos/533353/pexels-photo-533353.jpeg?auto=compress&cs=tinysrgb&h=350',
  category: 'Food',
  rating: 3,
  commission_amount: 28,
  rent_price_min: 5,
  rent_price_max: 170,
  brand: true,
  link: "instagram.com/drinking-buddies"
  )

puts 'done'
sleep(0.5)

print 'Creating bookings...'
b1 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s1,
  start_date: "2018-11-25",
  end_date: "2018-12-25",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b2 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s2,
  start_date: "2018-11-20",
  end_date: "2018-12-20",
  status: "Declined",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b3 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s3,
  start_date: "2019-01-20",
  end_date: "2019-02-20",
  status: "Accepted",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b4 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s5,
  start_date: "2018-10-01",
  end_date: "2018-11-01",
  status: "Past End Date",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b5 = Booking.create!(
  price_per_unit: 600,
  quantity: 24,
  total_price: 14400,
  name: "Craft Beers",
  category: "Food",
  user: u4,
  store: s10,
  start_date: "2018-11-20",
  end_date: "2018-11-30",
  booking_fee: (144*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/EoC_IuYmtug'
  )
b6 = Booking.create!(
  price_per_unit: 6700,
  quantity: 5,
  total_price: 33500,
  name: "Leather Purse",
  category: "Clothing",
  user: u1,
  store: s11,
  start_date: "2018-10-30",
  end_date: "2018-11-30",
  booking_fee: (335*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b7 = Booking.create!(
  price_per_unit: 5000,
  quantity: 10,
  total_price: 50000,
  name: "Drinks",
  category: "Food",
  user: u6,
  store: s17,
  start_date: "2018-12-10",
  end_date: "2019-01-10",
  booking_fee: (500*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/uVxPEvrYJxA'
  )
b8 = Booking.create!(
  price_per_unit: 2400,
  quantity: 7,
  total_price: 16800,
  name: "Love life",
  category: "Lifestyle",
  user: u2,
  store: s8,
  start_date: "2018-11-30",
  end_date: "2018-12-10",
  booking_fee: (168*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/-r_ZJcwAz7A'
  )
b9 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s11,
  start_date: "2018-09-25",
  end_date: "2018-10-25",
  status: "Past End Date",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b10 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s3,
  start_date: "2018-11-20",
  end_date: "2018-12-20",
  status: "Declined",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, would you have space for my jeans? Feel free to ask me any questions"
  )
b11 = Booking.create!(
  price_per_unit: 1500,
  quantity: 4,
  total_price: 6000,
  name: "Jeans",
  category: "Clothing",
  user: u1,
  store: s2,
  start_date: "2019-01-15",
  end_date: "2019-01-31",
  booking_fee: (60*0.15).round(2),
  remote_photo_url: 'https://unsplash.com/photos/M8ans8O-exI',
  comment: "Hello, here is the booking for January as you asked. Have a good day!"
  )

puts 'done'
sleep(0.5)

print 'Creating messages...'

m1 = Message.create!(
  text: "I like your jeans but my shelf has already been booked for those dates. Please send me another booking for January",
  booking: b2,
  user: u8
  )
m2 = Message.create!(
  text: "I love your design. I look forward to displaying your jeans in my store",
  booking: b3,
  user: u9
  )
m3 = Message.create!(
  text: "I want to start selling children's clothes. Do you have any jeans in small sizes?",
  booking: b9,
  user: u10
  )

puts 'done'
sleep(0.5)

puts 'SEEDS IS GOOOOOOOD!'
