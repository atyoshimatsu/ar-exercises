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
@store_id = Employee.find_by(id: 1).store_id
@store_name = Store.find_by(id: @store_id).name
puts @store_name

puts "----- enter new store name -----"
new_store_name = gets.chomp

@new_store = Store.create(name: new_store_name)

puts "----- error messages -----"
@new_store.errors.full_messages.each do |message|
  puts message
end
