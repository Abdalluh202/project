<?php
include("config.php");



// These action to add Image to table
if("ADD_IMAGE" == $action){
    // App will be posting these values to this serve
    $imagecode = $_POST["image_code"];
    $sql = "INSERT INTO ads
        (picpath) VALUES ('$imagecode')";
        $result = $connect->query($sql);
    echo "success";
    $connect-> close();
    return;
}

// // Get all Images records from the database
// if("GET_ALL" == $action){
//     $db_data = array();
//     $sql = "SELECT picpath, pic from ads";
//     $result = $connect->query($sql);
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