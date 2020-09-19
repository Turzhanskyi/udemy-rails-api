# frozen_string_literal: true

20.times do |_n|
  Book.create! title:  Faker::Book.title,
               author: Faker::Book.author,
               image:  Faker::Avatar.image
end
