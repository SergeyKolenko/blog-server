User.transaction do
  25.times do
    User.create(email: Faker::Internet.email, nickname: Faker::Internet.user_name,
                         name: Faker::Name.name, password: '123456789', password_confirmation: '123456789')
  end

  users_ids = User.pluck(:id)
  40.times do
    Post.create title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph(100), user_id: users_ids.sample
  end

  post_ids = Post.pluck(:id)

  200.times do
    Comment.create text: Faker::Lorem.paragraph, user_id: users_ids.sample, post_id: post_ids.sample
  end

end