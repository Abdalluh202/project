<?php
function images_api(){
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "my_s";
$table = "my_images"; // Create a table named my_images

// Create concction

$conn =  mysqli_connect($servername, $username, $password, $dbname);
    return $conn;
// Check Connection
if(!$conn){
    die("Connection Failed: " . $conn->connect_error);
    
}}

// //we will get actions from the app to do operations in the database...
// $action = $_POST["action"];

// //if the app sends an action to create the table...
// if(!"CREATE_TABLE" == $action){
//     $sql = "CREATE TABLE IF NOT EXISTS $table
//         ( id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
//         imageCode TEXT(900824) NOT NULL
//         )";
// //C:\xampp\htdocs
// if($conn->query($sql) === TRUE){
//     //send back success message
//     echo "success";
// }else{
//     echo "error";
//     }
// }

// // These action to add Image to table
// if("ADD_IMAGE" == $action){
//     // App will be posting these values to this serve
//     $imagecode = $_POST["image_code"];
//     $sql = "INSERT INTO $table
//         (imageCode) VALUES ('$imagecode')";
//         $result = $conn->query($sql);
//     echo "success";
//     $conn-> close();
//     return;
// }

// // Get all Images records from the database
// if("GET_ALL" == $action){
//     $db_data = array();
//     $sql = "SELECT id, imageCode from $table ORDER BY id DESC";
//     $result = $conn->query($sql);
//     if($result->num_rows > 0){
//         while($row = $result->fetch_assoc()){
//             $db_data[] = $row;
//         }
//         // Send back the coplete records as a json
//         echo json_encode($db_data);
//     }else{
//         echo "error";
//     }
//     $conn-> close();
//     return;
// }

// ?>