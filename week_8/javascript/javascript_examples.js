// function eat(food){
// 	console.log("Eating some " + food);
// }

// eat("Pizza");

// console.log(eat) // eat is function value as well
				 // if we dont put parameters it doesn't break like
				 // ruby that you need to call exact number of parameters or arguments

 // for (var i=1; i<=42; i+= 2) {
 // 	console.log(i);
 // }

 //LOOPS
 
 // var i = 1;

 // while (i<=42){
 // 	console.log(i);
 // 	i++;
 // }


 var foods = ["Pizza", "Cookies", "Bread"]

 // EACH LOOP

foods.forEach( function(food){ //forEach loop
	console.log(food);		// used this way, anonymus function to use one time only
} )

// THE SAME THING

// NAMED STYLE

// function logFood(food){ // used this way to recall in later code
// 	console.log(food)
// }

// foods.forEach(logFood);

// // MAP LOOP

// var capsFoods = foods.map(function(food){
// 	return food.toUpperCase(); //when calling a function important to use parenthesis
// })

// console.log(capsFoods);

// REDUCE LOOP 

// var foodMsg = foods.reduce(function(pre, food){
// 	return pre + " and " + food;
// })

// console.log(foodMsg);

// //  FILTER

// var breadless = foods.filter(function(food){
// 	return food !== "Bread";
// })

var food = "Pizza";

if (food === "Pizza"){
	console.log("Pizza is my favorite food too!");
} else if (food === "Sushi"){
	console.log("Sushi is pretty good...");
} else { 
	console.log("That's weird");
}


var myQuote = "The dog says 'Bark' "
console.log(myQuote)
