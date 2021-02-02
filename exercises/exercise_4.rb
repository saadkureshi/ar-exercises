require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey_store = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
whistler_store = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown_store = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true) # array

@mens_stores.each do |mens_store|
  puts "#{mens_store.name} carries mens apparel and makes $#{mens_store.annual_revenue} in revenue"
end

@womens_stores_small = Store.where(["womens_apparel = ? and annual_revenue < ?", true, 1000000])

@womens_stores_small.each do |womens_store|
  puts "#{womens_store.name} carries womens apparel and makes less than $1m in revenue"
end
