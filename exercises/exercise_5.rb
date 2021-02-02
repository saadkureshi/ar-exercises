require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum("annual_revenue")
puts "Total revenue is $#{@total_revenue}"

@avg_revenue = Store.average(:annual_revenue)
puts "Avg revenue is $#{@avg_revenue}"

@num_of_stores = Store.where("annual_revenue > ?", 1000000).count
puts "There are #{@num_of_stores} stores that make > $1m"
