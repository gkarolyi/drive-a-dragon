require "open-uri"

puts "Cleaning review database..."
Review.destroy_all

puts "Cleaning booking database..."
Booking.destroy_all

puts "Cleaning vehicle database..."
Vehicle.destroy_all

puts "Cleaning user database..."
User.destroy_all

# Creating users

user_one = User.create(email: "jens.wagner@gmail.com", password: "123456", name: "Jens Wagners")
user_two = User.create(email: "john.doe@gmail.com", password: "abcdef", name: "John Doe")
user_three = User.create(email: "lisa.mueller@gmx.com", password: "Anme2382", name: "Lisa Mueller")
user_four = User.create(email: "mike.berg@web.de", password: "Jdahb383", name: "Mike Berg")
user_five = User.create(email: "walter.white@gmail.de", password: "Mnen3933", name: "Walter White")

puts "Created #{user_one}"
puts "Created #{user_two}"
puts "Created #{user_three}"
puts "Created #{user_four}"
puts "Created #{user_five}"
puts "Finished!"

# Creating vehicles

puts "Creating vehicles..."


file_one = URI.open('https://otb.cachefly.net/wp-content/uploads/2014/10/Virgin-Galactic-Spaceship-Two.png')
file_two = URI.open('https://www.parcl.com/files/blog/milleniumfalconairhogs.jpg')
file_three = URI.open('https://image.shutterstock.com/image-photo/magic-flying-persian-carpet-isolated-260nw-250837636.jpg')
file_four = URI.open('http://www.thecraftdookit.co.uk/2240-large_default/doll.jpg')
file_five = URI.open('https://cache.desktopnexus.com/thumbseg/1271/1271162-bigthumbnail.jpg')

vehicle_one = Vehicle.create(user: user_one, name: "Executor", description: "Super Star Destroyer", location: "Solar system 4XF", category: Vehicle::CATEGORIES.sample, price: 250000)
vehicle_two = Vehicle.create(user: user_two, name: "Millennium Falcon", description: "The best spaceship ever made!", location: "Solar system 3GH", category: Vehicle::CATEGORIES.sample, price: 50000)
vehicle_three = Vehicle.create(user: user_three, name: "Flying Carpet", description: "Carpet that can fly!", location: "Orient", category: Vehicle::CATEGORIES.sample, price: 10000)
vehicle_four = Vehicle.create(user: user_four, name: "Red Dragon", description: "A big red dragon", location: "Germany", category: Vehicle::CATEGORIES.sample, price: 25000)
vehicle_five = Vehicle.create(user: user_five, name: "Green Dragon", description: "A big green dragon", location: "France", category: Vehicle::CATEGORIES.sample, price: 25000)

vehicle_one.photos.attach(io: file_one, filename: 'Virgin-Galactic-Spaceship-Two.png', content_type: 'image/png')
vehicle_two.photos.attach(io: file_two, filename: 'milleniumfalconairhogs.jpg', content_type: 'image/jpg')
vehicle_three.photos.attach(io: file_three, filename: 'magic-flying-persian-carpet-isolated-260nw-250837636.jpg', content_type: 'image/jpg')
vehicle_four.photos.attach(io: file_four, filename: 'doll.jpg', content_type: 'image/jpg')
vehicle_five.photos.attach(io: file_five, filename: '1271162-bigthumbnail.jpg', content_type: 'image/jpg')

puts "Created #{vehicle_one}"
puts "Created #{vehicle_two}"
puts "Created #{vehicle_three}"
puts "Created #{vehicle_four}"
puts "Created #{vehicle_five}"
puts "Finished!"

# Creating bookings

booking_one = Booking.create(user: user_one, vehicle: vehicle_one, start_date: 2010, end_date: 2011)
booking_two = Booking.create(user: user_two, vehicle: vehicle_two, start_date: 2012, end_date: 2013)
booking_three = Booking.create(user: user_three, vehicle: vehicle_three, start_date: 2014, end_date: 2015)

puts "Created #{booking_one}"
puts "Created #{booking_two}"
puts "Created #{booking_three}"
puts "Finished!"

# Creating reviews

review_one = Review.create(booking: booking_one, title: "The Best!", content: "That was a super fun experience.", rating: 5)
review_two = Review.create(booking: booking_two, title: "It was okay", content: "It was a decent experience", rating: 3)
review_three = Review.create(booking: booking_three, title: "Wow!", content: "I never had so much fun in my life before.", rating: 5)

puts "Created #{review_one}"
puts "Created #{review_two}"
puts "Created #{review_three}"
puts "Finished!"
