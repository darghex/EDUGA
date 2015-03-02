Tesoro.MainMenu = function(game){};

Tesoro.MainMenu.prototype = {
	create: function(){
		// display images
		this.add.sprite(0, 0, 'backgroundStart');
		this.game.add.image((Tesoro.GAME_WIDTH / 2) - 150, 70, 'headerIntro');
		//Agregamos un boton con animación
		this.add.button(Tesoro.GAME_WIDTH-401, Tesoro.GAME_HEIGHT-143, 'btnStartGame', this.startGame, this, 1, 0, 2);
		//this.sprite.input.useHandCursor = true;
		/*
		this.music = this.game.add.audio('Inicio'); //Nombre del archivo de sonido
	    this.music.volume = 0.5; //Cambiar el volumen
	    this.music.loop = true; //Si se repite cuando finalice de reproducir
	    this.music.play();//Reproducir
		 */

		//Sin animación
		//this.add.button(Tesoro.GAME_WIDTH-471, Tesoro.GAME_HEIGHT-143, 'btnStartGame', this.startGame, this);
		
	},
	startGame: function() {
		// start the Game state
		console.log("Start Confirmations");
		
		this.state.start('Confirmacion');
	}
};