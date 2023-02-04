<?php

if(isset($_POST['data'])){

    $DATA=$_POST['data'];
}else return;

if(isset($_POST['name'])){

    $name=$_POST['name'];
}else return;
$path="C:\development\App-Flutter\ktabna2-master\Upload/$name";
file_put_contents("$path", base64_decode($DATA));
echo json_encode("donDDD");

?>