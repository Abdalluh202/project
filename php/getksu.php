	<?php
	include("config.php");

	$sql = "SELECT * FROM ads where collage = 'جامعة الملك سعود' ";
	$res = $connect->query($sql);


	if ($res !== false) {
		while($row = $res -> fetch_assoc()) {
			$data[]=$row;
		}
		echo json_encode($data);
	} else {
		echo json_encode("sorry this is no ads know");
	}




	$mysqli_connect-> close();
	?>