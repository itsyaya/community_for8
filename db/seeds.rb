# Create 20 dummy users
20.times do |i|
  User.create(
    name: "User #{i + 1}",
    email: "user#{i + 1}@example.com",
    password: "password"
  )
end

users = User.all

# Create 10 dummy posts
10.times do |i|
  Post.create(
    title: "Post #{i + 1}",
    content: "This is the content for Post #{i + 1}.",
    user: users.sample
  )
end
