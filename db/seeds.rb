# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Group.where(name: 'Test Group').destroy_all
Group.where(name: 'Other Group').destroy_all

test_group = Group.create(name: 'Test Group', email: 'test@example.com')
test_group.guests.create(name: 'Guest 1')
test_group.guests.create(name: 'Guest 2')
test_group.guests.create(name: 'Guest 3')

other_group = Group.create(name: 'Other Group', email: 'other@example.com')
other_group.guests.create(name: 'Guest 4')
other_group.guests.create(name: 'Guest 5')
other_group.guests.create(name: 'Guest 6')
