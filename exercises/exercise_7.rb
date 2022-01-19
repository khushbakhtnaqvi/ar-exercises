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

puts "Please provide a store's name"
storeName = gets.chomp

@createStore = Store.create(name: storeName)

puts @createStore.errors.full_messages

# same thing
# @createStore.errors.full_messages.each do |err_msg|
#     puts err_msg
# end

@createStore2 = Store.create(name: 'Victoria', annual_revenue: 300000, mens_apparel: false, womens_apparel: false)
puts @createStore2.errors.full_messages
