class IngredientsController < ApplicationController

	def index
		ingredients = Ingredient.all
		render json: ingredients
	end

	def create
		ingredient = Ingredient.create(ingredient_params)
		render json: ingredient
	end

	def show
		ingredient = Ingredient.find_by(id: params[:id])

		if ingredient
			render json: ingredient
		else
			render json:  {error: "Ingredient not found"},
			status: 404
		end
	end

	def destroy
		ingredient = Ingredient.find_by(id: params[:id])

		if ingredient.destroy
			render json: ingredient
		else
			render json: {error: "Ingredient not found"},
			status: 404
		end
	end

	def update
		ingredient = Ingredient.find_by(id: params[:id])

		if ingredient.update
			render json: ingredient_params
		else
			render json: {error: "Ingredient not found"},
			status: 404
		end
	end


	private

	def ingredient_params
		params.require(:ingredient).permit(:name, :calories)
	end
end
