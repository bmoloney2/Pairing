User.destroy_all
# Post.destroy_all
 
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

# Post.create!({
#   title: "Test Title 1",
#   content: "test content 1",
#   sender_id: "sender id 1",
#   recipient_id: "recipient id 1",
#   rating: 3
# })
 
p "Created #{User.count} users"
# p "Created #{Post.count} posts"
