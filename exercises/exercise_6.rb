require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "sebas", last_name: "corso", hourly_rate: 70)
@store1.employees.create(first_name: "varon", last_name: "angel", hourly_rate: 80)
@store1.employees.create(first_name: "corso", last_name: "angel", hourly_rate: 80)
@store1.employees.create(first_name: "pedro", last_name: "angel", hourly_rate: 80)
@store2.employees.create(first_name: "juan", last_name: "angel", hourly_rate: 80)