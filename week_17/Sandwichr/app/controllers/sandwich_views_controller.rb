class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredient = @sandwich.ingredients
		@all_ingredients = Ingredient.all
	end
end
