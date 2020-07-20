<?php
require_once( "libraries/Layout.php" );

class Main {
	protected $model;
	protected $view;
	protected $layout;
	
	public function __construct() {
		$this->layout = new Layout();
	}
	
	protected function makeView($data) {
		require_once( "views/".$this->view );
	}
}
