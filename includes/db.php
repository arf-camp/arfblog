<?php


	$dsn = "mysql:host=localhost;dbname=arfblog";

	try {
		$pdo = new PDO($dsn, 'root', '');
	}
	catch(PDOException $e) {
		echo $e->getMessage();
	}

    


//site path
define('FRONT_SITE_PATH',"http://127.0.0.1/arfblog/");
?>