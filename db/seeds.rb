puts "Cleaning database..."
Service.destroy_all
User.destroy_all
Customer.destroy_all
Prestation.destroy_all

puts "Creating User..."

leelou = User.create!(
  first_name: "Leelou",
  last_name: "Meline",
  email: "leelou@email.com",
  password: "azerty"
)

puts "User created !"

dupont = Customer.create!(
  first_name: "Michel",
  last_name: "Dupont",
  address: "10 route de nantes, 44120 Vertou",
  phone_number: "06.98.33.94.30",
  email: "michel@email.com"
)

puts "Customer created !"

repassage = Prestation.create!(
  name: "repassage",
  description: "Repassage et pliage du linge propre (linge de maison ou vétements)",
  price: "50"
)

puts "Prestation created !"

service_dupont = Service.create!(
  user: leelou,
  customer: dupont,
  prestation: repassage,
  total_price: "50"
)

puts "Service created !"

puts "Finished!!!"
