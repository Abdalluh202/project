<?

require('config.php');
// insert a new ad

$book_name = $_POST['book_name'];
$phone = $_POST['phone2'];
$collage = $_POST['collage']
$loc = $_POST['loc'];
$com = $_POST['com'];
$spe = $_POST['spe'];


$sql = "INSERT INTO ads (`book_name`,`phone2`,`collage`,`loc`,`com`,`spe`)VALUE ('$book_name','$phone','$collage','$loc','$com','$spe')";

$statement = $connect -> prepare($sql);

$statement -> execute();

    echo json_encode("done add");


?>