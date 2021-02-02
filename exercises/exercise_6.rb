require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# @store1 = Store.find_by(id: 1)
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Saad", last_name: "Kureshi", hourly_rate: 30)
@store4.employees.create(first_name: "Talha", last_name: "Yunus", hourly_rate: 160)
@store5.employees.create(first_name: "Humza", last_name: "Siddiqui", hourly_rate: 70)
