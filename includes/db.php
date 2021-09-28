<?php


	$dsn = "mysql:host=localhost;dbname=arfblog";

	try {
		$pdo = new PDO($dsn, 'root', '');
	}
	catch(PDOException $e) {
		echo $e->getMessage();
	}

    
date_default_timezone_set('Asia/Dhaka');

//site path
define('FRONT_SITE_PATH',"http://127.0.0.1/arfblog/");
?>