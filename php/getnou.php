<?php
include("config.php");

$sql = "SELECT book_name,loc,com,spe,collage FROM ads where collage = 'جامعة الأميره نورة' ";
$res = $connect->query($sql);


if ($res >= 1) {
	while($row = $res -> fetch_assoc()) {
		$data[]=$row;
	}
	echo json_encode($data);
} else {
	echo json_encode("نعتذر لا توجد إعلانات حتى الأن");
}




$mysqli_connect-> close();
?>