# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Group.destroy_all

#Group.where(name: 'Test Group').destroy_all
#Group.where(name: 'Other Group').destroy_all

#test_group = Group.create(name: 'Test Group', email: 'test@example.com')
#test_group.guests.create(name: 'Guest 1')
#test_group.guests.create(name: 'Guest 2')
#test_group.guests.create(name: 'Guest 3')
#test_group.guests.create(name: 'Guest 4')
#test_group.guests.create(name: 'Guest 5')
#test_group.guests.create(name: 'Super Long Name Guest')

#other_group = Group.create(name: 'Other Group', email: 'other@example.com')
#other_group.guests.create(name: 'Guest 7')
#other_group.guests.create(name: 'Guest 8')
#other_group.guests.create(name: 'Guest 10')

groups = [
  { 'Reid'          => ['Ian Reid', 'Linda Reid', 'Miyun Reid', 'Ana Reid', 'James Reid', 'Shannon Reid', 'Brian Reid', 'Soniyae Reid'] },
  { 'CM Patterson'  => ['Charko Patterson', 'Megan Patterson'] },
  { 'Patterson'     => ['Charles Patterson', 'Toshiko Patterson', 'Richard Patterson', 'Sun-Ae Patterson'] },
  { 'KD Mattern'    => ['Kaleo Mattern', 'Danielle Holman'] },
  { 'Mattern'       => ['Leo Mattern', 'Karen Mattern', 'Christa Mattern', 'Kamorin Mattern', 'Kowa Mattern', 'John Mattern'] },
  { 'Pimentel'      => ['Honas Pimentel', 'Dora Pimentel'] },
  { 'Freystaetter'  => ['Peter Freystaetter', "Sheila 'Long Fingers' Freystaetter"] },
  { 'Konn'          => ['Victor Konn', 'Carrie Konn'] },
  { 'Yoon'          => ['Jin Yoon', 'Jumi Yoon'] },
  { 'Ledesma'       => ['Enrique Ledesma', 'Robyn Ledesma', 'Monica Ledesma', 'Cally Ledesma', 'Rachel Ledesma'] },
  { 'Sawada'        => ['Shiro Sawada', 'Janne Sawada', 'Takashi Sawada', 'Hitoe Sawada', 'Kenji Sawada', 'Mika Sawada'] },
  { 'AJ Reids'      => ['Alister Reid', 'Bridget Reid', 'Georgie Reid', 'Jemma Reid', 'Kim Reid'] },
  { 'Hart'          => ['Rachel Hart', 'Nick Russ'] },
  { 'Zambon'        => ['Carl Zambon', 'Katharina Zambon'] },
  { 'MK Zambon'     => ['Michael Zambon', 'Kirstin Zambon'] },
  { 'Nishiwaki'     => ['Tokuo Nishiwaki', 'Michelle Nishiwaki', 'Saya Nishiwaki'] },
  { 'Schramli'      => ['Jony Schramli', 'Glori Schramli'] },
  { 'NJ Thiessen'   => ['Nicole Thiessen', 'Juergen Thiessen'] },
  { 'TB Thiessen'   => ['Becca Thiessen', 'Tommy Thiessen'] },
  { 'CE Smart'      => ['Clara Smart', 'Edwin Bobrycki'] },
  { 'Smart'         => ['Bob Smart', 'Anne Smart'] },
  { 'Baldini'       => ['Myung Jin Baldini', 'Megan Baldini'] },
  { 'Breik'         => ['Omar Breik'] },
  { 'Hwang'         => ['Dae Hi Hwang', 'Satoko Hwang'] },
  { 'Simonds'       => ['Steve Simonds', 'Shinyoung Simonds'] },
  { 'Amigas'        => ['Mariela Bogado', 'Gabriela Arevalos', 'Mariela Melarejo', 'Rossana Rivas', 'Isis Dominguez', 'Cielo Reyes'] }
]

puts '========================================='
puts 'Preparing to Seed'
puts '========================================='

groups.each do |group|
  group_name = group.keys.first
  guests = group["#{group.keys.first}"]

  created_group = Group.create(name: group_name)
  guests.each { |guest| created_group.guests.create(name: guest) }
  puts "#{group_name} was added"
end

puts '========================================='
puts 'Done Seeding'
puts '========================================='
