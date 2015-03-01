Tesoro.Preloader = function(game){
	// define width and height of the game
	Tesoro.GAME_WIDTH = 800;
	Tesoro.GAME_HEIGHT = 600;
};



Tesoro.Preloader.prototype = {
	preload: function(){
		// set background color and preload image

		//Cargamos las imaged del proyecto
		this.game.load.image('backgroundStart', '../html/game/img/fondo_inicio.png');
		this.game.load.image('backgroundGame', '../html/game/img/background.png');
		this.game.load.image('headerIntro', '../html/game/img/headerIntro.png');
		this.game.load.image('personajeIntro', '../html/game/img/personaje.png');
		this.game.load.image('confirmacionStart', '../html/game/img/confirmacionStart.png');
		this.game.load.image('mapa', '../html/game/img/mapa.png');
		this.game.load.image('cuadroPregunta', '../html/game/img/cuadro_pregunta.png');
		//Cargamos los spritessheets
		this.load.spritesheet('btnStartGame', '../html/game/img/btnStartGame.png', 150, 60);
		this.load.spritesheet('progressGreen', '../html/game/img/GreenGem/gg_01.png', 150, 60);
		this.load.spritesheet('start', '../html/game/img/start.png');
		this.load.spritesheet('btnMapa', '../html/game/img/btnMapa.png');
	    //Cargamos los archivos de audio
	    this.game.load.audio('Inicio', '../html/game/sounds/Inicio.mp3');
	    this.game.load.audio('AyudaMagia', '../html/game/sounds/AyudaMagia.mp3');
	    this.game.load.audio('AyudaTribu', '../html/game/sounds/AyudaTribu.mp3');
	    this.game.load.audio('Boton', '../html/game/sounds/Boton.mp3');
	    this.game.load.audio('Cerrar', '../html/game/sounds/Cerrar.mp3');
	    this.game.load.audio('FeedbackRespuestaCorrecta', '../html/game/sounds/FeedbackRespuestaCorrecta.mp3');
	    this.game.load.audio('FeedbackRespuestaIncorrecta', '../html/game/sounds/FeedbackRespuestaIncorrecta.mp3');
	    this.game.load.audio('FelicitacionJuegoFinal', '../html/game/sounds/FelicitacionJuegoFinal.mp3');
	    this.game.load.audio('FinJuego', '../html/game/sounds/FinJuego.mp3');
	    this.game.load.audio('Ganar', '../html/game/sounds/Ganar.mp3');
	    this.game.load.audio('GanarGema', '../html/game/sounds/GanarGema.mp3');
	    this.game.load.audio('Lvl1', '../html/game/sounds/Lvl1.mp3');
	    this.game.load.audio('Lvl2', '../html/game/sounds/Lvl2.mp3');
	    this.game.load.audio('Lvl3', '../html/game/sounds/Lvl3.mp3');
	    this.game.load.audio('RespuestaSeleccionada', '../html/game/sounds/RespuestaSeleccionada.mp3');
	    this.game.load.audio('AyudaGuru', '../html/game/sounds/AyudaGuru.mp3');



		this.preloadBar = this.add.sprite((Tesoro.GAME_WIDTH-311)/2, (Tesoro.GAME_HEIGHT-27)/2, 'preloaderBar');
		this.load.setPreloadSprite(this.preloadBar);

	},
	create: function(){
		// start the MainMenu state
		//this.state.start('MainMenu');
		this.state.start('Game');
	},



};
