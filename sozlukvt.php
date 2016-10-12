<?php 
	$host = "localhost";
	$user = "efe";
	$pass = "sallama";
	$db = "sozluk";

	$baglan = mysqli_connect($host, $user, $pass, $db) or die('Bağlantı Sorunu');
	mysqli_set_charset($baglan, "utf8");

 ?>