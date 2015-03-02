var instance = null;
var tablero = { pregunta: null, respuesta: null};
var opciones = Array();
//Nivel
var level = 1;
var frame = 0;
//Timer
var total = 31;
var timer;
var maxTime = 31;
var progresTime;
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


Tesoro.Game.prototype = {
	create: function(){
		escenario(this);
		this.add.sprite(0, 0, 'backgroundGame');
		this.add.sprite(0, 150, 'cuadroPregunta');
		this.add.sprite(250, 0, 'scoreRed');
		progressGemGreen = this.add.sprite(94, 30, 'progressGreen');
		progresTime = this.add.sprite(700,495,'timeAmarillo');
		gemGreen = this.add.sprite(20, 15, 'gemGreen');

		//Timer
		timer = this.time.create(false);
    	timer.loop(1000, this.updateCounter, this);
		timer.start();
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
	},
	updateCounter: function () {
    	total--;
    	this.game.debug.text(total, 730, 570,'rgb(255,255,255)', '44px Arial');
    	frame = getFrameTimer(total, 3) - 1;
    	console.log(frame);
    	progresTime.frame = frame;
    	if (total == 0){
    		total = maxTime;
			instance.state.start('Game');    		
    	}
    	//console.log(total);
	}
};



function escenario(_instance){
		instance = _instance;

		$.ajax({
			url: "/EDUGA/tesoro_saber/root/cargar_preguntas",
			dataType: 'json',
			contentType:"application/json",
			success: function(response) {
				pregunta = response;
				tablero.pregunta = pregunta.id;

				instance.add.text(60, 160, pregunta.pregunta, { 
							 font: 'bold 15pt Arial', 
							 fill: 'white', align: 'center', 
							 wordWrap: true, 
							 wordWrapWidth: 700 
						});
				
				//carga de opciones de respuesta
				opciones = Array(
						{ name: pregunta.r1.label, label: 'A', description: pregunta.r1.detalle, x: 60, y: 285 },
						{ name: pregunta.r2.label, label: 'B', description: pregunta.r2.detalle, x: 500, y: 285 },
						{ name: pregunta.r3.label, label: 'C', description: pregunta.r3.detalle, x: 60, y: 405 },
						{ name: pregunta.r4.label, label: 'D', description: pregunta.r4.detalle, x: 500, y: 405 }
					);

				$.each(opciones, function(i, opcion) {
			
					txt = instance.add.text(opcion.x, opcion.y, opcion.label + ". " +opcion.description, 
							{ font: 'bold 15pt Arial', 
							  fill: 'white', align: 'justify', 
							  wordWrap: true, 
							  wordWrapWidth: 250, 
							  wordWrapHeight: 50, 
							}
						);
					txt.inputEnabled = true;
					txt.input.useHandCursor = true;
					txt.name = opcion.name;
					txt.label = opcion.label;
					txt.events.onInputDown.add(validarRespusta, instance);
				
				});

			},
			error: function(response){
					alert('response error');
			}
		});

		
}


function validarRespusta(item) {
  $.ajax({
			url: "/EDUGA/tesoro_saber/root/verificar?pregunta="+tablero.pregunta+"&respuesta="+item.name,
			dataType: 'json',
			contentType:"application/json",
			success: function(response) {
				 if( item.name == response.rc ){
				 	// Aqui se carga el escenario de respuesta correcta e inicia una nueva pregunta
  					console.log("respuesta correcta"); 
  					frame++;
					progressGemGreen.frame = frame;
					console.log("Frame " + frame);
					instance.add.sprite(100,140,'FeedbackOk');			
  					//instance.state.start('Game');
  				 }else{
  					var rcorrecta = "opcion" + mostrarCorrecta(response.rc)
  					instance.add.sprite(15,140,'FeedbackError');
  					instance.add.sprite(450,250,rcorrecta);			
  				 }
			},
			error: function(response){
					alert('response error');
			}
		});

}

function mostrarCorrecta(rc){

	for ( i = 0; i < opciones.length ; i ++)
		if( opciones[i].name == rc ){
			return opciones[i].label; // aqui remplazar por cambiar imagen
		}
}

//calcula el frame a mostrar
function getFrameTimer(currentTime, fraccion){	
	if (currentTime > (fraccion-1) * 10){
		return fraccion;
	}else{
		return getFrameTimer(currentTime, fraccion-1)
	}
}