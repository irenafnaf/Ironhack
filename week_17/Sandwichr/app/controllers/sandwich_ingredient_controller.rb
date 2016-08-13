class SandwichIngredientController < ApplicationController
	
	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingredients = Ingredient.find_by(id: params[:ingredient_id])
		sandwich.ingredients.push(ingredients)

		all_ingredients = sandwich.ingredients

		new_calories = sandwich.total_calories += ingredients.calories
		sandwich.update(total_calories: new_calories)

		sandwich_with_ingredients = {
			"sandwich" => sandwich,
			"ingredients" => all_ingredients
		}


		render json: sandwich_with_ingredients
	end

	
# When you post to this route, you should provide an 
#  ingredient_id in the parameters that will be used to 
#  find an ingredient from the database, and add it to the sandwich.

#The response in JSON should be the sandwich, 
#  with ingredients included.


end
