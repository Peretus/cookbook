class Cookbook
	attr_reader :title
	attr_accessor :recipes
	def initialize(title)
		@title = title
		@recipes = []
	end

	
	def add_recipe(recipe)
		@recipes << recipe
	end


	def list_recipes
		@recipes.each do |recipe|
			puts recipe
		end
	end

	def remove_recipe(recipe)
		@recipes.delete(recipe)
		puts "#{recipe.title.capitalize} was deleted successfully!"
	end

	def search(ingredient)
		@recipes.each do |recipe|
			if recipe.ingredients.include?(ingredient)
				puts "#{recipe.title} has #{ingredient} in it."
			else
				puts "Sorry, no recipes have #{ingredient}."
			end
		end
	end

end


class Recipe
	attr_reader :title
	attr_accessor :ingredients, :steps
	def initialize(title, ingredients, steps)
		@title = title
		@ingredients = ingredients
		@steps = steps
	end

	def list_ingredients
		@ingredients.join(', ')
	end

	def list_steps
		@steps.join(', ')
	end

	def baconate
		self.ingredients << "bacon"
		self.steps << "Serve with a side of bacon."
		puts "This is your next ingredient list: #{self.list_ingredients}" 
		puts "Here are the new steps: #{self.list_steps}"
	end
end



