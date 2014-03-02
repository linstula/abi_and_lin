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
  { 'AJ Reids'      => ['Alister Reid', 'Bridget Reid', 'Georgie Reid', 'Jemma Reid', 'Kim Reid'] },
  { 'Amigas'        => ['Mariela Bogado', 'Gabriela Arevalos', 'Mariela Melarejo', 'Rossana Rivas', 'Isis Dominguez', 'Cielo Reyes'] }
  { 'Baldini'       => ['Myung Jin Baldini', 'Megan Baldini'] },
  { 'Breik'         => ['Omar Breik'] },
  { 'CE Smart'      => ['Clara Smart', 'Edwin Bobrycki'] },
  { 'CM Patterson'  => ['Charko Patterson', 'Megan Patterson'] },
  { 'Cooper'        => ['Josie Cooper', 'Martin Stewart'] },
  { 'Freystaetter'  => ['Peter Freystaetter', "Sheila 'Long Fingers' Freystaetter"] },
  { 'Hart'          => ['Rachel Hart', 'Nick Russ'] },
  { 'Hwang'         => ['Dae Hi Hwang', 'Satoko Hwang'] },
  { 'KD Mattern'    => ['Kaleo Mattern', 'Danielle Holman'] },
  { 'Konn'          => ['Victor Konn', 'Carrie Konn'] },
  { 'Ledesma'       => ['Enrique Ledesma', 'Robyn Ledesma', 'Monica Ledesma', 'Cally Ledesma', 'Rachel Ledesma'] },
  { 'Mickler'       => ['Yuki Mickler'] },
  { 'MK Zambon'     => ['Michael Zambon', 'Kirstin Zambon'] },
  { 'Mattern'       => ['Leo Mattern', 'Karen Mattern', 'Christa Mattern', 'Kamorin Mattern', 'Kowa Mattern', 'John Mattern'] },
  { 'NJ Thiessen'   => ['Nicole Thiessen', 'Juergen Thiessen'] },
  { 'Nishiwaki'     => ['Tokuo Nishiwaki', 'Michelle Nishiwaki', 'Saya Nishiwaki'] },
  { 'Patterson'     => ['Charles Patterson', 'Toshiko Patterson', 'Richard Patterson', 'Sun-Ae Patterson'] },
  { 'Pimentel'      => ['Honas Pimentel', 'Dora Pimentel'] },
  { 'Reid'          => ['Ian Reid', 'Linda Reid', 'Miyun Reid', 'Ana Reid', 'James Reid', 'Shannon Reid', 'Brian Reid', 'Soniyae Reid'] },
  { 'Sawada'        => ['Shiro Sawada', 'Janne Sawada', 'Takashi Sawada', 'Hitoe Sawada', 'Kenji Sawada', 'Mika Sawada'] },
  { 'Schramli'      => ['Jony Schramli', 'Glori Schramli'] },
  { 'Simonds'       => ['Steve Simonds', 'Shinyoung Simonds'] },
  { 'Smart'         => ['Bob Smart', 'Anne Smart'] },
  { 'TB Thiessen'   => ['Becca Thiessen', 'Tommy Thiessen'] },
  { 'Yoon'          => ['Jin Yoon', 'Jumi Yoon'] },
  { 'Zambon'        => ['Carl Zambon', 'Katharina Zambon'] },
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
