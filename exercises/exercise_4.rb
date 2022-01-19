require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surreyStore = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true)
whistlerStore = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true)
yaletownStore = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {|store| puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}, Men's Apparel: #{store.mens_apparel}"}

@womens_stores_low_rev = Store.where(womens_apparel: true).where("annual_revenue < 1000000")

@womens_stores_low_rev.each {|store| puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}, Women's Apparel: #{store.womens_apparel}"}