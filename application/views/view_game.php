<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">
<meta name="viewport"
	content="user-scalable=0, initial-scale=1, minimum-scale=1, maximum-scale=1, width=device-width, minimal-ui=1">
<title>QuizGame</title>
<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="<?php echo base_url()?>/html/game/js/phaser.min.js"></script>
<script src="<?php echo base_url()?>/html/game/js/Boot.js"></script>
<script src="<?php echo base_url()?>/html/game/js/Preloader.js"></script>
<script src="<?php echo base_url()?>/html/game/js/MainMenu.js"></script>
<script src="<?php echo base_url()?>/html/game/js/Confirmacion.js"></script>
<script src="<?php echo base_url()?>/html/game/js/Game.js"></script>

</head>
<body>
<script>
(function() {
	// initialize the framework
	var game = new Phaser.Game(800, 600, Phaser.AUTO, 'game');
	var preguntas = new Array();
	$.ajax({
			url: "<?php echo base_url()?>/html/game/php/conexionManager.php",
			dataType: 'json',
			contentType:"application/json",
			success: function(response) {
				this.preguntas = new Array();
				$.each(response, function(i, item) {
					preguntas.push(item);
				});
			},
			error: function(response1){
					alert('response error')
			}
	});

	game.global = {
			score: preguntas,
			bestScore: 100
	};

	console.log("Se han cargado las preguntas : " + game.global.score);
	// add game states
	game.state.add('Boot', Tesoro.Boot);
	game.state.add('Preloader', Tesoro.Preloader);
	game.state.add('MainMenu', Tesoro.MainMenu);
	game.state.add('Confirmacion', Tesoro.Confirmacion);
	game.state.add('Game', Tesoro.Game);
	// start the Boot state
	game.state.start('Boot');
})();
</script>
</body>
</html>
