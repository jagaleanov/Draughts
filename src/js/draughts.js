// JavaScript Document

$(document).ready(function () {
	var draughts = new Draughts();
	draughts.start();
	$(".field").click(function () {
		draughts.process($(this).attr('id').substring(5, 6), $(this).attr('id').substring(6, 7));
	});
});

function Draughts() {

	//ATRIBUTOS
	var pieces = [];
	var turn = 1;
	var from = [];
	var playerPieces = [];
	var counterMarker = [0,0];
	
	//SOUNDS
	var audioInvalid = new Audio('src/sounds/invalido.mp3');
	var audioMovement = new Audio('src/sounds/movement.mp3');
	var audioKilled = new Audio('src/sounds/killed.mp3');
	var audioCoronation = new Audio('src/sounds/coronation.mp3');

	//METODOS PUBLICOS
	this.start = function () {
		showPieces();
	}

	this.process = function (i, j) {
		//console.log('NEW PROCESS i=' + i + ' - j=' + j);
		if (from.length == 2) {
			if (from[0] == i && from[1] == j) {
				//console.log("delete_from");
				from = [];
				$("#piece" + i + j).removeClass('bg-success');
			} else {
				//console.log("to");
				validateTo(i, j);
			}

		} else {
			//console.log("from");
			if (validateFrom(i, j) == true) {
				from = [i, j];
				$("#piece" + i + j).addClass('bg-success');
			}
		}
	}

	//METODOS PRIVADOS
	function setPlayerPieces() {
		playerPieces[1] = ['a', 'aa']
		playerPieces[2] = ['b', 'bb'];
	}

	function setStartPieces() {
		pieces = [
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],//EMPTY
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-']
		];
		pieces = [
			['-', 'b', '-', 'b', '-', 'b', '-', 'b', '-', 'b'],//TO START
			['b', '-', 'b', '-', 'b', '-', 'b', '-', 'b', '-'],
			['-', 'b', '-', 'b', '-', 'b', '-', 'b', '-', 'b'],
			['b', '-', 'b', '-', 'b', '-', 'b', '-', 'b', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', 'a', '-', 'a', '-', 'a', '-', 'a', '-', 'a'],
			['a', '-', 'a', '-', 'a', '-', 'a', '-', 'a', '-'],
			['-', 'a', '-', 'a', '-', 'a', '-', 'a', '-', 'a'],
			['a', '-', 'a', '-', 'a', '-', 'a', '-', 'a', '-']
		];
		/*
		
		pieces = [
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', 'b', '-', 'b', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', 'b', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', 'b', '-', 'b', '-', '+', '-'],
			['-', 'b', '-', 'b', '-', '+', '-', '+', '-', '+'],
			['aa', '-', '+', '-', '+', '-', '+', '-', '+', '-']
		];
		
		
		pieces = [
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', 'a'],
			['+', '-', '+', '-', '+', '-', '+', '-', 'b', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', 'a'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['+', '-', '+', '-', '+', '-', '+', '-', '+', '-'],
			['-', '+', '-', '+', '-', '+', '-', '+', '-', '+'],
			['aa', '-', '+', '-', '+', '-', '+', '-', '+', '-']
		];
		*/
	}

	function showPieces() {
		setPlayerPieces();

		if (pieces.length == 0) {
			setStartPieces();
		}
		

		for (var i = 0; i < 10; i++) {
			for (var j = 0; j < 10; j++) {
				if (pieces[i][j] != '-' && pieces[i][j] != '+') {
					$('#piece' + i + j).html('<img src="src/imgs/' + pieces[i][j] + '.png">');
				} else {
					$('#piece' + i + j).html('');
				}
			}
		}
		
		//callPieces();
	}

	function validateFrom(i, j) {
		//console.log('validateFrom i='+i+' - j='+j);

		var player = playerOnTurn();

		if (playerPieces[player].includes(pieces[i][j])) {
			from = [i, j];
			//console.log('valid');
			return true;
		} else {
			//console.log('invalid');
			audioInvalid.play();
			return false;
		}
	}

	function validateTo(i, j) {
		
		if (pieces[i][j]=='+') 
		{
			
			
			var query = 'processPHP(' + arrayToListProLog(pieces) + ',[' + (parseInt(from[0]) + 1) + ',' + (parseInt(from[1]) + 1) + '],[' + (parseInt(i)+1) + ',' + (parseInt(j)+1) + ']).';

			
			//console.log('ajax query= ' + query);
			
			$('.field').attr("disabled", true);

			$.ajax({
				type: 'POST',
				url: 'index.php?class=Draughts&method=query_to_pro_log',
				data: {
					query: query
				},
				success: function (resp) {
					//$('#res_ajax').html(resp);
					//console.log('ajax resp= ' + resp);
					var response = JSON.parse(resp);
					//console.log('ajax response= ' + response);
					
					if ('legal' in response && response.legal != 1) {
						audioInvalid.play();
					}
					else if ('legal' in response && response.legal == 1) {
						audioMovement.play();
						//console.log('board= ' + response.board);
						
						pieces = listToArrayProLog(response.board);
						showPieces();
						
						if('captured' in response && response.captured == 1) {
							audioKilled.play();
							sumCapturedPieces();
						}
						
						if('crowned' in response && response.crowned == 1) {
							audioCoronation.play();
						}
						
						//alert(response.changeTurn);
						
						if('winner' in response && response.winner == 1) {
							$('#piece' + from[0] + from[1]).removeClass('bg-success');
							from = [];
							alert('No hay más jugadas posibles. Fin del juego, Ganador: Jugador '+turn);
							
						} else if('changeTurn' in response && response.changeTurn == 1) {
							$('#piece' + from[0] + from[1]).removeClass('bg-success');
							from = [];
							nextTurn();
						} else {
							$('#piece' + from[0] + from[1]).removeClass('bg-success');
							$('#piece' + i + j).addClass('bg-success');
							from = [i,j];
						}
						
					}
				},
				complete:function(){
					$('.field').attr('disabled', false);
				}
			});

		}
		else{
			audioInvalid.play();
		}
	}

	function playerOnTurn() {
		if (turn % 2 == 1) {
			return 1;
		} else {
			return 2;
		}
	}

	function showPlayerOnTurn() {
		if (playerOnTurn() == 1) {
			$("#turnIndicator1").removeClass('notInTurn');
			$("#turnIndicator2" ).removeClass('bg-success table-dark');
			$("#turnIndicator1").addClass('bg-success table-dark');
			$("#turnIndicator2" ).addClass('notInTurn');
		} else if (playerOnTurn() == 2) {
			$("#turnIndicator1").removeClass('bg-success table-dark');
			$("#turnIndicator2" ).removeClass('notInTurn');
			$("#turnIndicator1").addClass('notInTurn');
			$("#turnIndicator2" ).addClass('bg-success table-dark');
		}
	}

	function sumCapturedPieces() {
		var player = playerOnTurn();
		if (player == 1) {
			counterMarker[0]++;
		} else if (player == 2) {
			counterMarker[1]++;
		}
		showCapturedPieces();
	}

	function showCapturedPieces() {
		$("#counterMarker1" ).html(counterMarker[0]);
		$("#counterMarker2" ).html(counterMarker[1]);
	}

	function nextTurn() {
		turn++;
		showPlayerOnTurn();
	}

	function arrayToListProLog(matrix) {
		
		for ( var i = 0, copy = []; i < 10; i++ ) {
			copy[i]=matrix[i];
		}
		
		
		for (i = 0; i < 10; i++) {
			copy[i] = copy[i].join();
		}
		return '['+copy.join()+']';
	}

	function listToArrayProLog(list) {
		var pieces = [];
		for (var i = 0; i < 10; i++) {
			pieces[i] = list.split(',').slice(i*10,(i+1)*10);
		}
		return pieces;
	}
}
