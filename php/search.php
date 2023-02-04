<?

include("config.php");


$spe = $_POST["spe"];

$sql = "SELECT * FROM ads WHERE book_name LIKE '$spe'";
$res = $connect->query($sql);

if ($res == true) {
    while ($row = $res->fetch_assoc()) {
        $data[] = $row;
    } 

} else {
    echo json_decode("somthing wrong !");
}



echo json_decode($data);
?>