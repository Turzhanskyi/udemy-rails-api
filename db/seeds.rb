# frozen_string_literal: true

20.times do |_n|
  Book.create! title:  Faker::Book.title,
               author: Faker::Book.author,
               image:  Faker::Avatar.image
end

10.times do |_n|
  User.create! email:    Faker::Internet.email,
               password: 'test_user'
end

100.times do |_n|
  Review.create! title:            'best book ever',
                 content_rating:   Faker::Number.between(1, 10),
                 recommend_rating: Faker::Number.between(1, 10),
                 user_id:          rand(1..10),
                 book_id:          rand(1..20)
end
