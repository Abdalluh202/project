<?php
include("config.php");


$sql = "SELECT * FROM ads";
$res = $connect->query($sql);

while($row = $res -> fetch_assoc()) {
	$data[]=$row;
}
echo "<pre>";
print_r($data);
echo "<pre>";
?>