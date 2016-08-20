$(document).ready(function() {

	$(".js_add_ingredient").on("click",doAjax)

})

	function doAjax(){

		var sandwich_id = $(event.currentTarget).data("sandwich-id")
		var add_ingredient_id = $(event.currentTarget).data("ingredient-id")
		var newIngredient = { ingredient_id: add_ingredient_id}
		console.log(add_ingredient_id);
		
		$.ajax({
			type: "POST",
			url: `http://localhost:3000/api/sandwiches/${sandwich_id}/ingredients/add`,
			data: newIngredient,
			success: addIngredientSuccess,
			error: addIngredientError
			});
	};

	function addIngredientSuccess(response){
		
		var $ingredientList = $('#ingredient-list');
		console.log(response);
		var last_ingredient = response.ingredients.length -1
		var last = response.ingredients[last_ingredient]
		
		var html = ` <li> ${last.name} | Calories: ${last.calories} </li> `;
		$ingredientList.append(html);

		var total_cal = response.sandwich.total_calories
		var $totalCalories = $('#total-calories');
		$totalCalories.text(total_cal)
	}

	function addIngredientError(error){
		console.log(error)
	}



