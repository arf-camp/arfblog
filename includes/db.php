<?php

	$dsn = "mysql:host=localhost;dbname=arfblog";

	try {
		$pdo = new PDO($dsn, 'root', '');
	}
	catch(PDOException $e) {
		echo $e->getMessage();
	}

?>