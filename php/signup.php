<?php
include("config.php");

$email = $_POST["email"];
$name = $_POST["name"];
$pass = $_POST["passwords"];
$collage = $_POST["collage"];
$spe = $_POST["spe"];
$phone = $_POST["phone"];

$sql = "SELECT * FROM users where email = '$email'";
$res = $connect->query($sql);

$count = $res->num_rows;

if ($count > 0) {
    echo json_encode("already");
} if ($count < 1) {
    $sql = "INSERT INTO users(email,name,passwords,collage,spe,phone)VALUES('$email','$name','$pass','$collage,'$spe','$phone'";
    $res = $connect->query($sql);

    if ($res) {
        echo json_encode("done add");
    }
}

?>