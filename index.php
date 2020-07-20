<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
date_default_timezone_set('America/Bogota');

require_once("controllers/ControllerFactory.php");

if(isset($_GET['class'])) {
	$class = $_GET['class'];
	unset($_GET['class']);
}else{
	$class = null;
}

if(isset($_GET['method'])) {
	$method = $_GET['method'];
	unset($_GET['method']);
}else{
	$method = null;
}

$params = $_GET;

$controllerFactory = new ControllerFactory($class, $method, $params);
		
//print '<pre>';print_r(get_defined_vars());print '</pre>';