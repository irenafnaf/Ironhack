var numbers = '80:70:90:100';

function averageColon(num){
	var array = num.split(":");

	var georgina = array.reduce(function(num1, num2){
		return parseInt(num1) + parseInt(num2);
	})
return georgina/array.length

}



totalAverage = averageColon(numbers);
console.log(totalAverage);