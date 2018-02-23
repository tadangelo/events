

10.times do |i|
  User.create!(email: "test#{i}@test.com", name: "user#{i}", password: "asdfasdf", password: "asdfasdf")
end

puts "10 users created"

10.times do |i|
Event.create!(title: "event#{i}", user_id: 1)
end

puts "10 events created"

10.times do
myrnd = rand(1..10)
myrnd2 = rand(1..10)
Attendee.create!(event_id: myrnd, user_id: myrnd2)
end

puts "10 attedee records created"