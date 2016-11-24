User.create!(name:  "Example User",
             email: "thanhtam12t3@gmail.com",
             password:              "thanhtam12",
             password_confirmation: "thanhtam12",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end