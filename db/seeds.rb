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

vehicle_one = Vehicle.create(user: user_one, name: "Executor", description: "Super Star Destroyer", location: "Solar system 4XF", category: "Spaceship", price: 250000)
vehicle_two = Vehicle.create(user: user_two, name: "Millennium Falcon", description: "The best spaceship ever made!", location: "Solar system 3GH", category: "Spaceship", price: 50000)
vehicle_three = Vehicle.create(user: user_three, name: "Flying Carpet", description: "Carpet that can fly!", location: "Orient", category: "Carpet", price: 10000)
vehicle_four = Vehicle.create(user: user_four, name: "Red Dragon", description: "A big red dragon", location: "Germany", category: "Dragon", price: 25000)
vehicle_five = Vehicle.create(user: user_five, name: "Green Dragon", description: "A big green dragon", location: "France", category: "Dragon", price: 25000)

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
