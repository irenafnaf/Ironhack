class SandwichesController < ApplicationController


	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end


	def show
		sandwich = Sandwich.find_by(id: params[:id])
		ingredients = 
			if sandwich.ingredients != 0
				sandwich.ingredients.all
			else
				"None"
			end
		calories = sandwich.total_calories
		sandwich_with_ingredients = {"sandwich" => sandwich,
								"ingredients" => ingredients,
								"calories" => calories}
		if sandwich
			render json: sandwich_with_ingredients
			
		else
			render json: {error: "Sandwich not found"},
				status: 404
		end
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])

		if sandwich.update(sandwich_params)
			render json: sandwich
		else
			render json: {error: "Sandwich not found"},
				status: 404
		end
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])

		if sandwich.destroy
			render json: sandwich
		else
			render json: {error: "Sandwich not found"},
				status: 404
		end
	end

	private

	def sandwich_params # strong parameters
		params.require(:sandwich).permit(:name, :bread_type)
	end

end
