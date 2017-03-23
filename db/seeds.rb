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
#   user_id: "UUID GOES HERE1 - NEEDS TO BE UNCOMMENTED IN 20170321210057_create_post.rb",
#   recipient_email: "testemail1@gmail.com",
#   rating: 3
# })

# Post.create!({
#   title: "Test Title 2",
#   content: "test content 2",
#   user_id: "UUID GOES HERE2 - NEEDS TO BE UNCOMMENTED IN 20170321210057_create_post.rb",
#   recipient_email: "testemail2@gmail.com",
#   rating: 3
# })


# Post.create!({
#   title: "Test Title 3",
#   content: "test content 3",
#   user_id: "UUID GOES HERE3 - NEEDS TO BE UNCOMMENTED IN 20170321210057_create_post.rb",
#   recipient_email: "testemail3@gmail.com",
#   rating: 3
# })
 
 
p "Created #{User.count} users"
# p "Created #{Post.count} posts"
