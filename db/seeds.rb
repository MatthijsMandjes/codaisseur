Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all


modern_and_minimal = Category.create(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create(name: "Warm and Cozy")
room_with_a_view = Category.create(name: "Room with a View")
elegant_and_ornate = Category.create(name: "Elegant and Ornate")
a_mans_touch = Category.create(name: "A Man's Touch")
white_washed = Category.create(name: "White Washed")
tempting_terrace = Category.create(name: "Tempting Terrace")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

event1 = Event.create!(name: "Eventname10", description: "A description for an event10", location: "Amsterdam", price: 100.00, capacity: 100,
                     includes_food: true, includes_drinks: false, user: miriam, categories: [tempting_terrace])

event2 = Event.create!(name: "Eventname11", description: "A description for an event11", location: "Rotterdam", price: 100.00, capacity: 100,
                      includes_food: true, includes_drinks: false, user: wouter, categories: [elegant_and_ornate])

event3 = Event.create!(name: "Eventname12", description: "A description for an event12", location: "Utrech", price: 100.00, capacity: 100,
                      includes_food: true, includes_drinks: false, user: matt, categories: [sleek_and_sophisticated])

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1504773176/sample.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1504773176/sample.jpg", event: event2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/du5cam6dp/image/upload/v1504773176/sample.jpg", event: event3)
