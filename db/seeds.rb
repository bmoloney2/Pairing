# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
 
User.create!({
  first_name: "Mike",
  last_name: "Cessaro",
  email: "mctest@gmail.com",
  admin: true,
  password: "mctestpw"
})

User.create!({
  first_name: "Brian",
  last_name: "Moloney",
  email: "bmtest@gmail.com",
  admin: true,
  password: "bmtestpw"
})

User.create!({
  first_name: "Jin",
  last_name: "Kim",
  email: "jktest@gmail.com",
  admin: true,
  password: "jktestpw"
})

User.create!({
  first_name: "Raul",
  last_name: "Vasquez",
  email: "rvtest@gmail.com",
  admin: true,
  password: "rvtestpw"
})

User.create!({
  first_name: "Matt",
  last_name: "Ahern",
  email: "matest@gmail.com",
  admin: true,
  password: "matestpw"
})

User.create!({
  first_name: "Dan",
  last_name: "Kweon-Lee",
  email: "dktest@gmail.com",
  admin: true,
  password: "dktestpw"
})
 
p "Created #{User.count} users"
