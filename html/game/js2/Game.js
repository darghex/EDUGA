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
		this.add.sprite(150, 200, 'btnMagia');

	},//escenario,
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



var instance = null;
var tablero = { pregunta: null, respuesta: null};
var opciones = Array();

function escenario(new_instance){
		instance = new_instance;
		
		

		$.ajax({
			url: "../html/game/php/conexionManager.php",
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
			url: "../html/game/php/verificar.php?preg="+tablero.pregunta+"&rpta="+item.name,
			dataType: 'json',
			contentType:"application/json",
			success: function(response) {
				 if( item.name == response.rc ){
				 	// Aqui se carga el escenario de respuesta correcta e inicia una nueva pregunta
  					console.log("respuesta correcta"); 
  					instance.state.start('Game');
  				 }else{
  					console.log("La respuesta correcta es la " +  mostrarCorrecta(response.rc) );
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