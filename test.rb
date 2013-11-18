load "cookbook.rb"


mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean and Cheese Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"])
chips_n_salsa = Recipe.new("Chips and Salsa", ["tortilla chips", "salsa"], ["place chips in bowl", "pour salsa over"])
puts burrito
puts chips_n_salsa

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(chips_n_salsa)


# [1, 2, "three"].each do |item|
# 	puts item
# end

puts "--------------------"
puts "putting burrito"
puts "--------------------"

puts burrito

# puts "--------------------"
# puts "Removing Burrito"
# puts "--------------------"

# mex_cuisine.remove_recipe(burrito)

puts "-" * 100

puts "Search cookbook for salsa."
mex_cuisine.search("salsa")

puts '=' * 100
burrito.baconate
