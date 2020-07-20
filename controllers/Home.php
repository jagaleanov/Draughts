<?php
require_once( "controllers/Main.php" );


class Home extends Main {

	public function __construct() {

		parent::__construct();
		session_start();
		//session_destroy();
	}

	public function index() {
		
		$this->layout->view( 'home.php' );
	}
}