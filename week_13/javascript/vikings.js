var Viking = function(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;

	this.attack = function(target){
		if((target.health - this.strength) <= 0) {
			console.log("Game over")
		} else { 
		target.health = target.health - this.strength;
		console.log(this.name + " has attacked " + target.name + " with " + this.strength + " strength");
		console.log(target.name + "'s health is now at " + target.health);
		}


	};
}

// if otherViking health - this.strength = 0 , print game over other wise run the attack
var viking1 = new Viking("Josh", 100, 8);
var viking2 = new Viking("Faraz", 100, 5);

viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
viking1.attack(viking2);
console.log(viking2.health);