require 'faker'
# create users
users = 15.times.map do
  User.create!(email: Faker::Internet.email, username: Faker::Name.name, password: "password" )
end

# create questions
questions = 5.times.map do
  users.sample.questions.create!(title: Faker::Company.bs, body: Faker::Lorem.paragraph)
end

answers = 30.times.map do
  questions.sample.answers.create!(body: Faker::Lorem.paragraph, user: users.sample)
end

10.times do
  questions.sample.tags.create!(name: Faker::Lorem.sentence(word_count = 1))
end

commentables = [questions, answers].flatten
comments = 20.times.map do
  commentables.sample.comments.create!(body: Faker::Lorem.sentence, user: users.sample)
end

commentables += comments

commentables.each do |item|
    item.votes.create!(user: users.sample, vote_direction: [-1,1].sample)
end




