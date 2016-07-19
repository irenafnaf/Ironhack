// var array = [1, 2, 3];

// function printNumber(number){
// 	console.log(number)
// }

// // printNumber(2);
// console.log(printNumber);

// array.forEach(printNumber);

// array.forEach(function(number){
// 	console.log(number);
// })

// function superSlowThing(number){

// }

// // Synchronous version
// var number = superSlowThing(42);

// function shout(){
// 	console.log("AHHHH");
// }

// setTimeout(shout, 2000);

// console.log("In ruby this would appear after 3 seconds");

function logSeconds(seconds){
	console.log(`It's been ${seconds} seconds`);
}

function sleep(seconds, callback){
	setTimeout(function(){ 
		callback(seconds)
	}, seconds * 1000);
}

sleep(2, logSeconds);
sleep(3, logSeconds);
sleep(4, logSeconds);
sleep(1, logSeconds);