JsOsaDAS1.001.00bplist00�Vscript_�var Origin = function() {
	
	eyeColors = [ "brown", "hazel", "blue", "green" ];
	hairColors = [ "black", "brown", "red", "blonde" ];
	
	var oPosition = function() {
		return Math.round(Math.random() * 3);
	}
	
	var selector = function(trait) {
		var selected = trait[oPosition()];
		return selected;
	}

	this.eyes = selector(eyeColors);
	this.hair = selector(hairColors);
}


var motherOrigin = new Origin();
var fatherOrigin = new Origin();

var Mother = function(eyes, hair) {
	this.eyes = eyes;
	this.hair = hair;
	this.gender = "female";
}

var Father = function(eyes, hair) {
	this.eyes = eyes;
	this.hair = hair;
	this.gender = "male";
}


Mother.prototype = new Origin();
Father.prototype = new Origin();

mother = new Mother(motherOrigin.eyes, motherOrigin.hair);
father = new Father(fatherOrigin.eyes, fatherOrigin.hair);

childEyeColors = [mother.eyes, father.eyes];
childHairColors = [mother.hair, father.hair];


var Child = function(eyeColor, hairColor) {

	var oPosition = function() {
		return Math.round(Math.random());
	}
	
	var selector = function(trait) {
		var selected = trait[oPosition()];
		return selected;
	}
	
	this.eyes = selector(eyeColor);
	this.hair = selector(hairColor);
	this.gender = (function () { return Math.round(Math.random()) == 0 ? "male" : "female" }());
}


Child.prototype = new Mother();
Child.prototype = new Father();

Child.prototype.name = "Jamie";


var child = new Child(childEyeColors, childHairColors);

var hisOrHer = function() {
	return child.gender === "male" ? "her" : "his";
}


if (child.eyes === mother.eyes && child.eyes !== father.eyes) {
	child.name + " inherited " + mother.eyes + " eyes from " + hisOrHer() + " mother!";
} else if (child.eyes === father.eyes && child.eyes !== mother.eyes) {
	child.name + " inherited " + father.eyes + " eyes from " + hisOrHer() + " father!";
} else {
	child.name + " inherited " + child.eyes + " eyes from both parents!";
}

                              � jscr  ��ޭ