Fabricator(:goal) do
  name { Faker::Hacker.ingverb }
  description { Faker::Lorem.words }
  user_id Fabricate(:user).id
end
