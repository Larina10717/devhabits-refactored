Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email { Faker::Internet.email }
  password 'cicciobello1'
  goal_id { Fabricate(:goal).id } 
end
