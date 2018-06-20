require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# class Store < ApplicationRecord::Base
#   self.abstract_class = true

#attr_accessor :name, :annual_revenue, :mens_apparel, :womens_apparel
# def initialize(:name, :annual_revenue, :mens_apparel, :womens_apparel)
# end
#Store.create!(name: Faker::Name.name, annual_revenue: Faker::annual_revenue.annual_revenue, mens_apparel: false, womens_apparel:true)
store1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel:true)
store2 = Store.create(name: "Richmond", annual_revenue: 1260000, womens_apparel:true)
store3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true)
store1.save
store2.save
store3.save

# end
  # create_table :stores do |t|
  #   t.column :name, :string
  #   t.column :annual_revenue, :integer
  #   t.column :mens_apparel, :boolean
  #   t.column :womens_apparel, :boolean
  #   t.timestamps null: false
  # end
  