<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>PasaElHueco.com</title>

	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

	<!--CSS-->
	<link rel='stylesheet' type='text/css' href="src/css/bootstrap.min.css">
	<link rel='stylesheet' type='text/css' href="src/css/style.css">
	<?=$this->get_css()?>
	<style type="text/css">
		<?=$this->get_style()?>
	</style>
	<!--CSS-->

	<!--JS-->
	<script src="src/js/jquery-3.4.1.min.js" language="javascript" type="text/javascript"></script>
	<script src="src/js/bootstrap.min.js" language="javascript" type="text/javascript"></script>
	<?=$this->get_js()?>
	<script language="javascript" type="text/javascript">
		<?=$this->get_script()?>
	</script>
	<!--JS-->
</head>

<body>
	<?=$content_data?>
</body>
</html>