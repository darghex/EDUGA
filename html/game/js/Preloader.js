Tesoro.Preloader = function(game){
	// define width and height of the game
	Tesoro.GAME_WIDTH = 800;
	Tesoro.GAME_HEIGHT = 600;
};


var PATH = '/EDUGA/html/game/';
Tesoro.Preloader.prototype = {
	preload: function(){
		//Cargamos las images del proyecto
		this.game.load.image('backgroundStart', PATH + 'img/fondo_inicio.png');
		this.game.load.image('backgroundGame', PATH + 'img/background.png');
		this.game.load.image('headerIntro', PATH + 'img/headerIntro.png');
		this.game.load.image('personajeIntro', PATH + 'img/personaje.png');
		this.game.load.image('confirmacionStart', PATH + 'img/confirmacionStart.png');
		this.game.load.image('mapa', PATH + 'img/mapa.png');
		this.game.load.image('cuadroPregunta', PATH + 'img/cuadro_pregunta.png');
		this.game.load.image('scoreRed', PATH + 'img/Gemas/gemaScoreRed.png');
		this.game.load.image('FeedbackOk', PATH + 'img/feedbacks_ok.png');
		this.game.load.image('FeedbackError', PATH + 'img/feedbacks_error.png');
		this.game.load.image('opcionA', PATH + 'img/opcionA.png');
		this.game.load.image('opcionB', PATH + 'img/opcionB.png');
		this.game.load.image('opcionC', PATH + 'img/opcionC.png');
		this.game.load.image('opcionD', PATH + 'img/opcionD.png');
		this.game.load.image('gemGreen', PATH + 'img/Gemas/gema_verde.png');
		this.game.load.image('gemRed', PATH + 'img/Gemas/gema_roja.png');
		this.game.load.image('gemBlue', PATH + 'img/Gemas/gema_azul.png');
		//Cargamos los spritessheets
		this.load.spritesheet('btnStartGame', PATH + 'img/btnStartGame.png', 250, 105);
		this.load.spritesheet('progressGreen', PATH + 'img/Gemas/spritesheet_fgreen1.png', 131, 73);
		this.load.spritesheet('start', PATH + 'img/start.png',250, 94);
		this.load.spritesheet('btnMapa', PATH + 'img/btnMapa.png');
		this.load.spritesheet('timeAmarillo', PATH + 'img/time/amarillo.png',100,104);
	    //Cargamos los archivos de audio
	    this.game.load.audio('Inicio', PATH + 'sounds/Inicio.mp3');
	    this.game.load.audio('AyudaMagia', PATH + 'sounds/AyudaMagia.mp3');
	    this.game.load.audio('AyudaTribu', PATH + 'sounds/AyudaTribu.mp3');
	    this.game.load.audio('Boton', PATH + 'sounds/Boton.mp3');
	    this.game.load.audio('Cerrar', PATH + 'sounds/Cerrar.mp3');
	    this.game.load.audio('FeedbackRespuestaCorrecta', PATH + 'sounds/FeedbackRespuestaCorrecta.mp3');
	    this.game.load.audio('FeedbackRespuestaIncorrecta', PATH + 'sounds/FeedbackRespuestaIncorrecta.mp3');
	    this.game.load.audio('FelicitacionJuegoFinal', PATH + 'sounds/FelicitacionJuegoFinal.mp3');
	    this.game.load.audio('FinJuego', PATH + 'sounds/FinJuego.mp3');
	    this.game.load.audio('Ganar', PATH + 'sounds/Ganar.mp3');
	    this.game.load.audio('GanarGema', PATH + 'sounds/GanarGema.mp3');
	    this.game.load.audio('Lvl1', PATH + 'sounds/Lvl1.mp3');
	    this.game.load.audio('Lvl2', PATH + 'sounds/Lvl2.mp3');
	    this.game.load.audio('Lvl3', PATH + 'sounds/Lvl3.mp3');
	    this.game.load.audio('RespuestaSeleccionada', PATH + 'sounds/RespuestaSeleccionada.mp3');
	    this.game.load.audio('AyudaGuru', PATH + 'sounds/AyudaGuru.mp3');



		this.preloadBar = this.add.sprite((Tesoro.GAME_WIDTH-311)/2, (Tesoro.GAME_HEIGHT-27)/2, 'preloaderBar');
		this.load.setPreloadSprite(this.preloadBar);

	},
	create: function(){
		// start the MainMenu state
		this.state.start('MainMenu');
		//this.state.start('Game');
	},



};
