<?php
	include 'config.php';
	$id=$_POST['id'];
	$connect->query("DELETE FROM ads WHERE id=".$id);
?>