<?php
include("images_api.php");
$con = images_api();

if (isset($_POST["data"])) {

    $data = $_POST["data"];
} else
    return;
if (isset($_POST["name"])) {

    $name = $_POST["name"];
} else
    return;



$path = "C:\Users\Dell\Flutter Applications\ktabna\sign_in\images/$name";

$query = "INSERT INTO `my_images`( `imageCode`) VALUES ('$path')";




//$imagename =  $_POST["imageCode"];
//$images=base64_decode( $data);
       
file_put_contents("$path", base64_decode( $data));

$arr=[];
$exe = mysqli_query($con, $query);
if($exe){
    $arr["success"] = "true";
}
else
$arr["success"] = "false";

print_r(json_encode($arr));


  




?>

