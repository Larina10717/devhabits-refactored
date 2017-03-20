Fabricator(:goal) do
  name { Faker::Hacker.ingverb }
  description { Faker::Lorem.words }
end 
