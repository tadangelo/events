10.times do |i|
  User.create!(email: "test#{i}@test.com",
              name: "user#{i}",
              password: "asdfasdf",
              password_confirmation: "asdfasdf"
    )
end

puts "10 test users created!"


10.times do |post|
  Event.create!(title: "my event #{post}", user_id: 1,
                body: "this is an example body"
    )
end

puts "10 example events created!"

10.times do 
  myrnd = rand(1..10)
  myrnd2 = rand(1..10)
  Favorite.create!(event_id: myrnd, user_id: myrnd2)
end

puts "10 favorite records created"


10.times do
myrnd = rand(1..10)
myrnd2 = rand(1..10)
Attendee.create!(event_id: myrnd, user_id: myrnd2)
end

puts "10 attedee records created"

