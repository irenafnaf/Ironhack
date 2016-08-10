class IngredientsController < ApplicationController

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

	def delete
		ingredient = Ingredient.find_by(id: params[:id])

		if ingredient.delete
			render json: ingredient
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
