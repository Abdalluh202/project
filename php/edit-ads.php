<?php

require('config.php')
// insert a new ad

$book_name = mysqli_real_escape_string($connect, $_POST['book_name']);
$collage = mysqli_real_escape_string($connect, $_POST['collage']);
$spe = mysqli_real_escape_string($connect, $_POST['spe']);
$phone2 = mysqli_real_escape_string($connect, $_POST['phone2']);
$loc = mysqli_real_escape_string($connect, $_POST['loc']);
$com = mysqli_real_escape_string($connect, $_POST['com']);
$pic = mysqli_real_escape_string($connect, $_POST['pic']);


$connect->query("UPDATE ads SET book_name='".$book_name."', collage='".$collage."', spe='".$spe."', phone2='".$phone2.",'loc'".$loc",''com'".$com",'pic'".$pic" WHERE id=". $id);


?>


