var Car = function(model, noise){
	this.model = model;
	this.noise = noise;
	this.wheels = 4;

	this.makeNoise = function(){
		console.log(this.noise);
	}

}

var bmw = new Car("i8", "Vroom!");

bmw.makeNoise();
console.log(bmw.model);