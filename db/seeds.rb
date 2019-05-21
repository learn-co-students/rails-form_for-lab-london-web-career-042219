# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: 'Ines', last_name: 'Guerrero')
Student.create(first_name: 'Ayleen', last_name: 'Nazario')
Student.create(first_name: 'Ross', last_name: 'Ross')

SchoolClass.create(title: 'History', room_number: 3)
SchoolClass.create(title: 'Art', room_number: 4)
SchoolClass.create(title: 'Music', room_number: 5)
