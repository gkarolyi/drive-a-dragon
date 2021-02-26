require "open-uri"

puts "Cleaning review database..."
Review.destroy_all

puts "Cleaning booking database..."
Booking.destroy_all

puts "Cleaning vehicle database..."
Vehicle.destroy_all

puts "Cleaning user database..."
User.destroy_all

puts "Cleaning review database..."
Review.destroy_all

# Creating users

owner = User.create(email: "jens.wagner@gmail.com", password: "123456", name: "Jens Wagner")
renter = User.create(email: "hermione@hogwarts.com", password: "abcdef", name: "Hermione Granger")

puts "Created #{owner}"
puts "Created #{renter}"

# Creating vehicles

puts "Creating vehicles..."

file_one = URI.open('https://static.wikia.nocookie.net/starwars/images/3/30/Executor_BF2.png')
file_two = URI.open('https://www.parcl.com/files/blog/milleniumfalconairhogs.jpg')
file_three = URI.open('https://upload.wikimedia.org/wikipedia/commons/5/55/Vasnetsov_samolet.jpg')
file_four = URI.open('http://www.thecraftdookit.co.uk/2240-large_default/doll.jpg')
file_five = URI.open('https://static.wikia.nocookie.net/forgottenrealms/images/8/80/Green_dragon_-_Lars_Grant-West.jpg')
file_six = URI.open('https://i.pinimg.com/originals/57/04/fa/5704faca07f35d985cdb80795e33b174.jpg')
file_seven = URI.open('https://www.menzels-lokschuppen.de/out/pictures/master/product/1/145-06890.jpg')
file_eight = URI.open('https://s1.1zoom.me/b5050/366/Star_Wars_Movies_Ships_451757_1920x1080.jpg')
file_nine = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/TeamTimeCar.com-BTTF_DeLorean_Time_Machine-OtoGodfrey.com-JMortonPhoto.com-07.jpg/1200px-TeamTimeCar.com-BTTF_DeLorean_Time_Machine-OtoGodfrey.com-JMortonPhoto.com-07.jpg')
file_ten = URI.open('https://i.pinimg.com/originals/a7/70/fa/a770fa23704ffb2bbb1f079a6cf015fa.jpg')
file_eleven = URI.open('https://i.pinimg.com/originals/0b/49/8a/0b498a906632fce1ddda98e340a4ef1f.jpg')
file_twelve = URI.open('https://www.cadcrowd.com/blog/wp-content/uploads/2016/11/Steampunk-Race-Car-Design-medmihaly.jpg')
file_thirteen = URI.open('https://cdn.trendhunterstatic.com/thumbs/futuristic-motorcycle.jpeg')
file_fourteen = URI.open('https://photos.desired.de/12/55/45/cd8b6dc20e44c5222a0f408211_ZmMgODBhZDZmZTdmZmZmIDk1MCA0NzUCcmUgOTUwIDQ3NQMxNWNiY2VjMjAwMQ==_pegasus-tattoo.png')
file_fifteen = URI.open('https://bilder.t-online.de/b/76/36/23/36/id_76362336/c_Master-1-1-Large/tid_da/der-phoenix-hat-viele-bedeutungen-im-christentum-symbolisiert-er-die-auferstehung-.jpg')
file_sixteen = URI.open('http://2.bp.blogspot.com/-qpBUiyna5lo/VMmaYtXM6kI/AAAAAAAADdE/Phyex0AxHVg/s1600/3_DeathToWhisperers_GuidoKuip_2014.jpg')
file_seventeen = URI.open('https://render.fineartamerica.com/images/images-profile-flow/400/images/artworkimages/mediumlarge/2/1-green-dragon-daniel-eskridge.jpg')
file_eighteen = URI.open('https://squir.com/media/catalog/product/cache/2/image/9df78eab33525d08d6e5fb8d27136e95/4/0/40877.jpg')
file_nineteen = URI.open('https://www.cgstudio.com/imgd/l/4/56bb253e61946e24028b4567/6104.jpg')


vehicle_one = Vehicle.create(user: owner, name: "Executor", description: "The famous Super Star Destroyer!", location: "Solar system 4XF", category: 'sci-fi', price: 25.000)
vehicle_two = Vehicle.create(user: owner, name: "Millennium Falcon", description: "The best spaceship ever made!", location: "Solar system 3GH", category: 'sci-fi', price: 15.000)
vehicle_three = Vehicle.create(user: owner, name: "Flying Carpet", description: "A Carpet that can fly! What's more to say?", location: "Orient", category: 'magic object', price: 2.500)
vehicle_four = Vehicle.create(user: owner, name: "Red Dragon", description: "Attention: A ride with that dragon could ruin your hairstyle!", location: "Germany", category: 'magic creature', price: 5.000)
vehicle_five = Vehicle.create(user: owner, name: "Green Dragon", description: "Attention: A ride with that dragon could ruin your hairstyle!", location: "France", category: 'magic creature', price: 6.000)
vehicle_six = Vehicle.create(user: owner, name: "Flying Broom", description: "That broom flies you everywhere you want fast and safe.", location: "Hogwarts", category: 'magic object', price: 750)
vehicle_seven = Vehicle.create(user: owner, name: "X-wing fighter", description: "This compact (41-foot, 12.5-meter long) Rebel spitfire gets the job done!", location: "Solar system 1GH", category: 'sci-fi', price: 3.500)
vehicle_eight = Vehicle.create(user: owner, name: "The Devastator", description: "Darth Vader's nearly 5,250-foot-long (1,600-meter), Imperial-class Star Destroyer", location: "Solar system 5NX", category: 'sci-fi', price: 17.500)
vehicle_nine = Vehicle.create(user: owner, name: "DeLorean DMC-12", description: "You ever wanted to fly with a car? This is the right one for that!", location: "USA", category: 'magic object', price: 6.500)
vehicle_ten = Vehicle.create(user: owner, name: "The Wheelhouse", description: "Travel and take your house with you.", location: "Scotland", category: 'magic object', price: 2.500)
vehicle_eleven = Vehicle.create(user: owner, name: "Dieselpunk", description: "Half car, half scrapheap. But it will bring you from A to B.", location: "Italy", category: 'magic object', price: 250)
vehicle_twelve = Vehicle.create(user: owner, name: "Race car", description: "The fastest car that you will find.", location: "London", category: 'magic object', price: 1.500)
vehicle_thirteen = Vehicle.create(user: owner, name: "Two wheeler", description: "If you want to ride a special motorcycle, you have found the right one.", location: "Berlin", category: 'magic object', price: 750)
vehicle_fourteen = Vehicle.create(user: owner, name: "Pegasus", description: "What's not to like about a flying horse?", location: "Hamburg", category: 'magic creature', price: 350)
vehicle_fifteen = Vehicle.create(user: owner, name: "Phoenix", description: "Attention: The ride could be quite hot!", location: "Texas", category: 'magic creature', price: 1250)

vehicle_one.photos.attach(io: file_one, filename: 'Executor_BF2.png', content_type: 'image/png')
vehicle_two.photos.attach(io: file_two, filename: 'milleniumfalconairhogs.jpg', content_type: 'image/jpg')
vehicle_three.photos.attach(io: file_three, filename: 'Vasnetsov_samolet.jpg', content_type: 'image/jpg')
vehicle_four.photos.attach(io: file_four, filename: 'doll.jpg', content_type: 'image/jpg')
vehicle_five.photos.attach(io: file_five, filename: 'Green_dragon_-_Lars_Grant-West.jpg', content_type: 'image/jpg')
vehicle_six.photos.attach(io: file_six, filename: '5704faca07f35d985cdb80795e33b174.jpg', content_type: 'image/jpg')
vehicle_seven.photos.attach(io: file_seven, filename: '145-06890.jpg', content_type: 'image/jpg')
vehicle_eight.photos.attach(io: file_eight, filename: 'Star_Wars_Movies_Ships_451757_1920x1080.jpg', content_type: 'image/jpg')
vehicle_nine.photos.attach(io: file_nine, filename: '1200px-TeamTimeCar.com-BTTF_DeLorean_Time_Machine-OtoGodfrey.com-JMortonPhoto.com-07.jpg', content_type: 'image/jpg')
vehicle_ten.photos.attach(io: file_ten, filename: 'a770fa23704ffb2bbb1f079a6cf015fa.jpg', content_type: 'image/jpg')
vehicle_eleven.photos.attach(io: file_eleven, filename: '0b498a906632fce1ddda98e340a4ef1f.jpg', content_type: 'image/jpg')
vehicle_twelve.photos.attach(io: file_twelve, filename: 'Steampunk-Race-Car-Design-medmihaly.jpg', content_type: 'image/jpg')
vehicle_thirteen.photos.attach(io: file_thirteen, filename: 'futuristic-motorcycle.jpeg', content_type: 'image/jpg')
vehicle_fourteen.photos.attach(io: file_fourteen, filename: 'cd8b6dc20e44c5222a0f408211_ZmMgODBhZDZmZTdmZmZmIDk1MCA0NzUCcmUgOTUwIDQ3NQMxNWNiY2VjMjAwMQ==_pegasus-tattoo.png', content_type: 'image/png')
vehicle_fifteen.photos.attach(io: file_fifteen, filename: 'der-phoenix-hat-viele-bedeutungen-im-christentum-symbolisiert-er-die-auferstehung-.jpg', content_type: 'image/jpg')

vehicle_five.photos.attach(io: file_sixteen, filename: '3_DeathToWhisperers_GuidoKuip_2014.jpg', content_type: 'image/jpg')
vehicle_five.photos.attach(io: file_seventeen, filename: '1-green-dragon-daniel-eskridge.jpg', content_type: 'image/jpg')

vehicle_seven.photos.attach(io: file_eighteen, filename: '40877.jpg', content_type: 'image/jpg')
vehicle_seven.photos.attach(io: file_nineteen, filename: '6104.jpg', content_type: 'image/jpg')


puts "Created #{vehicle_one}"
puts "Created #{vehicle_two}"
puts "Created #{vehicle_three}"
puts "Created #{vehicle_four}"
puts "Created #{vehicle_five}"
puts "Created #{vehicle_six}"
puts "Created #{vehicle_seven}"
puts "Created #{vehicle_eight}"
puts "Created #{vehicle_nine}"
puts "Created #{vehicle_ten}"
puts "Created #{vehicle_eleven}"
puts "Created #{vehicle_twelve}"
puts "Created #{vehicle_thirteen}"
puts "Created #{vehicle_fourteen}"
puts "Created #{vehicle_fifteen}"
puts "Finished!"

# Creating bookings


booking_one = Booking.create(user: renter, vehicle: vehicle_one, start_date: DateTime.yesterday, end_date: DateTime.yesterday, status: 'accepted')
booking_two = Booking.create(user: renter, vehicle: vehicle_two, start_date: DateTime.yesterday, end_date: DateTime.tomorrow, status: 'accepted')
booking_three = Booking.create(user: renter, vehicle: vehicle_three, start_date: DateTime.yesterday, end_date: DateTime.now, status: 'declined')


puts "Created #{booking_one}"
puts "Created #{booking_two}"
puts "Created #{booking_three}"
puts "Finished!"

# Creating reviews

review_one = Review.create(user: renter, booking: booking_one, title: "The Best!", content: "That was a super fun experience.", rating: 5)
review_two = Review.create(user: renter, booking: booking_two, title: "It was okay", content: "It was a decent experience", rating: 3)
review_three = Review.create(user: renter, booking: booking_three, title: "Wow!", content: "I never had so much fun in my life before.", rating: 5)

puts "Created #{review_one}"
puts "Created #{review_two}"
puts "Created #{review_three}"
puts "Finished!"
