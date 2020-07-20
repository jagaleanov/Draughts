<?php

class ControllerFactory {
	public function __construct( $class = null, $method = null, $params = array() ) {
		
		if(!$class) {
			$class = 'Home';
		}
		
		if(!$method) {
			$method = 'index';
		}
		
		require_once('controllers/'.$class.'.php');
		$controller = new $class();
		return $controller->$method($params);
	}
}