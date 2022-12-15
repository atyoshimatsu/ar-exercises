require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "The total revenue is #{Store.sum(:annual_revenue)}"
puts "The average revenue is #{Store.average(:annual_revenue)}"
puts "The number of stores with annual revenue of 1M$ more is #{Store.where(annual_revenue: 1000000..).count}"
