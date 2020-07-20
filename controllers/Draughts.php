<?php
require_once( "controllers/Main.php" );


class Draughts extends Main {

	private $board = array();

	public function __construct() {

		parent::__construct();
		session_start();
		//session_destroy();
	}

	public function index() {

		$this->set_board();

		$data[ 'board' ] = $this->board;

		$this->layout->set_js( 'src/js/draughts.js' );
		$this->layout->set_css( 'src/css/draughts.css' );
		
		$this->layout->view( 'draughts/board.php', $data );
	}

	public function query_to_pro_log( ) {
		//$output = 'swipl -s damas.pl -g "'.query.'" -t halt.';
		//return exec($output);
		//print '<pre>POST = ';print_r($_POST);print '</pre>';
		$query = $_POST['query'];

		$response = `swipl -s damas.pl -g "$query" -t halt.`;
		

		if ( $response ) {
			//print '<pre>ProLog</pre>';
			//print '<pre>QUERY: ';print_r($query);print '</pre>';
			//print '<pre>RESPONSE: ';print_r($response);print '</pre>';
			print_r($response);
			
		} else {
			print 'Hubo en problema en ProLog al consultar orden:<br> ' . $query;
		}
		
	}


	/**PRIVATE METODS**/

	private function set_board() {

		$data = array();
		$this->board = array();

		for ( $i = 0; $i < 10; $i++ ) {
			$this->board[ $i ] = array();

			for ( $j = 0; $j < 10; $j++ ) {
				$this->board[ $i ][ $j ] = array();
				$this->board[ $i ][ $j ][ 'color' ] = $this->color_field( $i, $j );
			}
		}
	}

	private function color_field( $i, $j ) {
		if ( $i % 2 == 0 && $j % 2 == 1 ) {
			return 'dark';
		} else if ( $i % 2 == 0 && $j % 2 == 0 ) {
			return 'light';
		} else if ( $i % 2 == 1 && $j % 2 == 1 ) {
			return 'light';
		} else if ( $i % 2 == 1 && $j % 2 == 0 ) {
			return 'dark';
		}
	}
}