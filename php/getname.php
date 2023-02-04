<?php
include("config.php");


$sql = "SELECT name FROM users where id = 1";
$res = $connect->query($sql);

while($row = $res -> fetch_assoc()) {
	$data[]=$row;
}


echo json_encode($data);
?>