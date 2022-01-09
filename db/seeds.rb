# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 seeding users"

anne_hand = User.create(name:"Ann Hand",institution: "Jefferson High School",notifications: 7)

puts "🌱 seeding milestones"

Milestone.create(title: "Board Meeting",date: DateTime.new(2022,9,12),action_required: false,user_id: anne_hand.id)
Milestone.create(title: "End of Quarter",date: DateTime.new(2022,12,1),action_required: true,user_id: anne_hand.id)
Milestone.create(title: "Spring Break",date: DateTime.new(2022,4,26),action_required: false,user_id: anne_hand.id)
Milestone.create(title: "Second Quarter",date: DateTime.new(2022,1,12),action_required: true,user_id: anne_hand.id)

puts "🌱 done seeding!"