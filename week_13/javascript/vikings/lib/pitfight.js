var Pitfight = function(viking1,viking2, turns){
	this.viking1 = viking1;
	this.viking2 = viking2;
	this.state = {
		currentlyAttacking: viking1,
		beingAttacked: viking2
	}
	this.turns = turns;
}

Pitfight.prototype.initiate = function(){
	console.log("The battle has begun between ${this.viking1.name} and ${this.viking2.name}")
	this.battle();
}

Pitfight.prototype.vikingAlmostDead = function(){
	return (this.viking1.health <= (this.viking2.strength + 1)) ||
	(this.viking2.health <= (this.viking2.strength + 1));
}

Pitfight.prototype.battle =