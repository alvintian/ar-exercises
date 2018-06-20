require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store4 = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel:true)
store5 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel:true)
store6 = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel:true, mens_apparel: true)
@mens_stores=Store.where(mens_apparel:true, womens_apparel:nil)
@womens_stores=Store.where(womens_apparel:true,mens_apparel:nil).where("annual_revenue<?",1000000)
store4.save
store5.save
store6.save
#@mens_stores.save

# 1.upto(@mens_stores.count) do
# puts @mens_stores.name
# end
@mens_stores.each do |store|
	puts "#{store.name} with earning of #{store.annual_revenue}"
end

@womens_stores.each do |store|
	puts "#{store.name} with earning of #{store.annual_revenue}"
end
# 4. Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.
