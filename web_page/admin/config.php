<?php 
	$nameDB = "curs";
	$nameSERVER = "localhost";
	$nameUSER = "root";
	$passUSER = "root";

	$conDB = mysqli_connect($nameSERVER, $nameUSER, $passUSER, $nameDB) or die("ERROR".mysqli_error($nameDB));

	mysqli_query($conDB, "SET NAMES utf8");
?>