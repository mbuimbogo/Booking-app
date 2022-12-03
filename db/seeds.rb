# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding data.."
user = User.create(name: "Sophia Nganga", user_name: "Kabda")
first = User.create(name: "Verah Njenga", user_name: "Vee")
third = User.create(name: "Nana Owiti", user_name: " Vin")
forth = User.create(name: "Ian Macharia", user_name: " Sartivah")
fifth = User.create(name: "Mukangu Munini", user_name: " Vaite")
sixth = User.create(name: "Esther Muturi", user_name: " Princess")
seventh = User.create(name: "Reagan Kinoti", user_name: " Scotty")
eigth = User.create(name: "Wanjiku Muinamia", user_name: " Dee")
ninth = User.create(name: "Wambui Ericah", user_name: " Santos")
second = User.create(name: "Meghan Njeri", user_name: "Princeess")

#restaurants seed
balk = Restaurant.create(name: "Dhaba Resto", city: "Nairobi", state: "Kenya")
cruise = Restaurant.create(name: "Kona baridi", city: "Kiserian", state: "Kenya")

#reviews seed
Review.create(body: "Awesome place to be", "user_id": user.id, "restaurant_id":balk.id)
Review.create(body: "It is a wonderful place for staycation", "user_id": user.id, "restaurant_id":cruise.id)
Review.create(body: "I really enjoyed the stay", "user_id": user.id, "restaurant_id":balk.id)
Review.create(body: "Bless this place. I saw wonders", "user_id": user.id, "restaurant_id":cruise.id)
Review.create(body: "I love this place. Damn!", "user_id": user.id, "restaurant_id":balk.id)
Review.create(body: "Extremely comfy", "user_id": user.id, "restaurant_id":cruise.id)
Review.create(body: "Guys, this is the place to be", "user_id": user.id, "restaurant_id":cruise.id)
Review.create(body: "I'd visit this restaurant again and again", "user_id": user.id, "restaurant_id":balk.id)
Review.create(body: "Awesome, awesome awesome", "user_id": user.id, "restaurant_id":cruise.id)
Review.create(body: "The services are on another high level.", "user_id": user.id, "restaurant_id":balk.id)
Review.create(body: "It is a great place", "user_id": user.id, "restaurant_id":balk.id)

Booking.create("status": "booked", "user_id":user.id, "restaurant_id":balk.id)
Booking.create("status": "booked", "user_id":first.id, "restaurant_id":balk.id)
Booking.create("status": "booked", "user_id":second.id, "restaurant_id":cruise.id)
Booking.create("status": "booked", "user_id":third.id, "restaurant_id":balk.id)
Booking.create("status": "booked", "user_id":forth.id, "restaurant_id":cruise.id)
Booking.create("status": "booked", "user_id":fifth.id, "restaurant_id":cruise.id)
Booking.create("status": "booked", "user_id":sixth.id, "restaurant_id":balk.id)
Booking.create("status": "booked", "user_id":seventh.id, "restaurant_id":balk.id)
Booking.create("status": "booked", "user_id":eigth.id, "restaurant_id":cruise.id)
Booking.create("status": "booked", "user_id":ninth.id, "restaurant_id":balk.id)

puts 'Done!'