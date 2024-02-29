require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: true, womens_apparel: false)
whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts "mens stores :#{store.name}  #{store.annual_revenue}"
end

@womens_stores = Store.where(["womens_apparel = ? AND annual_revenue < ?", true, 1000000])

for store in @womens_stores
  puts "womens stores :#{store.name}  #{store.annual_revenue}"
end