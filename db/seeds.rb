# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 seeding users"

anne_hand = User.create(name:"Ann Hand",institution: "Jefferson High School",notifications: 7)
bob_killion = User.create(name:"Bob Killion",institution: "Jefferson High School",notifications: 2)

puts "🌱 seeding milestones"

board_meeting = Milestone.create(title: "Board Meeting",date: DateTime.new(2022,9,12),action_required: false,user_id: anne_hand.id)
end_of_quarter = Milestone.create(title: "End of Quarter",date: DateTime.new(2022,12,1),action_required: true,user_id: anne_hand.id)
spring_break = Milestone.create(title: "Spring Break",date: DateTime.new(2022,4,26),action_required: false,user_id: anne_hand.id)
second_quarter = Milestone.create(title: "Second Quarter",date: DateTime.new(2022,1,5),action_required: true,user_id: anne_hand.id)

puts "🌱 seeding assignments"

Assignment.create(user_id: bob_killion.id,milestone_id: board_meeting.id)
Assignment.create(user_id: anne_hand.id,milestone_id: second_quarter.id)

puts "🌱 done seeding!"