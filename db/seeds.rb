# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
  posts = Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph, image: "https://picsum.photos/200/300")
end

100.times do
  comments = Comment.create(content: Faker::Lorem.paragraph, post_id: rand(1..20))
end
