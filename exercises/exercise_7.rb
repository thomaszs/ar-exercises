require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# p Employee.create(first_name: "hey", last_name: "yo", hourly_rate: 200).valid?
# p Store.create(name: "coo", annual_revenue: 1, womens_apparel: true).valid?
puts "Please enter a store name"
input_name = gets.chomp()
puts Store.create(name: input_name)
puts Store.create(name: input_name).valid?
puts Store.create(name: input_name).errors.messages

