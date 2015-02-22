Tesoro.Game = function(game){
	// define needed variables for Candy.Game
	this._candyGroup = null;
	this._spawnCandyTimer = 0;
	this._fontStyle = null;
	// define Candy variables to reuse them in Candy.item functions
	Tesoro._scoreText = null;
	Tesoro._score = 0;
	Tesoro._health = 0;

};
var rc;
Tesoro.Game.prototype = {
	create: function(){
		this.add.sprite(0, 0, 'backgroundGame');
		this.add.sprite(0, 150, 'cuadroPregunta');
		console.log(Math.floor(Math.random() * (21 - 1 + 1)) + 1);

		var style = { font: 'bold 15pt Arial', fill: 'white', align: 'left', wordWrap: true, wordWrapWidth: 700 };
		var pregunta;
		var r1;
		var r2;
		var r3;
		var r4;
		//var rc;
		
		$.each(this.game.global.score, function(i, item) {
			console.log("Pregunta " + item.pregunta);
			pregunta = item.pregunta;
			r1 = item.r1;
			r2 = item.r2;
			r3 = item.r3;
			r4 = item.r4;
			rc = item.rc;
		});
		//Pregunta
		this.add.text(60, 160, pregunta, style);
		//Opcion 1
		txtr1 = this.add.text(60, 280, r1, style);
		txtr1.inputEnabled = true;
		txtr1.name = 'A';
		console.log(rc);
		txtr1.events.onInputDown.add(validarRespusta, this);
		
		//Opcion 2
		txtr2 = this.add.text(500, 280, r2, style);
		txtr2.inputEnabled = true;
		txtr2.name = 'B';
		txtr2.input.useHandCursor = true;
		txtr2.events.onInputDown.add(validarRespusta, this);
		//Opcion 3
		txtr3 = this.add.text(60, 400, r3, style);
		txtr3.inputEnabled = true;
		txtr3.name = 'C';
		txtr3.events.onInputDown.add(validarRespusta, this);
		//Opcion 4
		txtr4 = this.add.text(500, 400, r4, style);
		txtr4.inputEnabled = true;
		txtr4.name = 'D';
		txtr4.events.onInputDown.add(validarRespusta, this);
	},
	managePause: function(){
		// pause the game
		this.game.paused = true;
		// add proper informational text
		var pausedText = this.add.text(100, 250, "Game paused.\nTap anywhere to continue.", this._fontStyle);
		// set event listener for the user's click/tap the screen
		this.input.onDown.add(function(){
			// remove the pause text
			pausedText.destroy();
			// unpause the game
			this.game.paused = false;
		}, this);
	}
};


function validarRespusta(item) {
    /*item.fill = "#ff0044";
    item.text = "click and drag me";*/
	if (rc === item.name)
		console.log("Respuesta Correcta " + rc + " - Click : " + item.name);
}