Tesoro.Confirmacion = function(game){};

var sprite;
var button;
Tesoro.Confirmacion.prototype = {

	create: function(){
		this.add.sprite(0, 0, 'backgroundGame');
		this.add.sprite(310,60,'confirmacionStart');
		this.add.sprite(0, 100, 'personajeIntro');
		var btnAceptar = this.add.button(380, 280, 'start', this.startGame2, this, 1, 0, 2);
		btnAceptar.input.useHandCursor = true;		
		button = this.add.button(740, 180, 'btnMapa', this.startMapa, this, 1, 0, 2);
		sprite = this.add.sprite(790, 180, 'mapa');
	},
	startGame2: function() {
		// start the Game state
		console.log("Start Game");
		this.state.start('Game');
	},
	startMapa: function() {
		// start the Game state
		console.log("Start Mapa");
		//var sprite = this.add.sprite(100, 180, 'mapa');

		//Funciona
	    //this.add.tween(sprite).from( { x: -200 }, 2000, Phaser.Easing.Bounce.Out, true);

		if (sprite.x === 440)
		{
			//	Here you'll notice we are using a relative value for the tween.
			//	You can specify a number as a string with either + or - at the start of it.
			//	When the tween starts it will take the sprites current X value and add +300 to it.
			this.add.tween(button).to( { x: '+350' }, 1000, Phaser.Easing.Linear.None, true);
			this.add.tween(sprite).to( { x: '+350' }, 1000, Phaser.Easing.Linear.None, true);
		} else if (sprite.x === 790) {
			this.add.tween(button).to( { x: '-350' }, 1000, Phaser.Easing.Linear.None, true);
			this.add.tween(sprite).to( { x: '-350' }, 1000, Phaser.Easing.Linear.None, true);
		}

	}

};
