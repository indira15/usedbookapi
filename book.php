<?php

require_once 'include/DB_Functions.php';

// array for JSON response
$response = array();

$errors = array(); 

if (empty($_POST['name'])) {
    $errors['name'] = "Name is empty";
}

if (empty($_POST['cost'])) {
    $errors['cost'] = "Cost is empty";
}

if (empty($_POST['authorname'])) {
    $errors['authorname'] = "authorname is empty";
}

if (empty($_POST['edition'])) {
    $errors['edition'] = "authorname is empty";
}

if (!isset($_FILES['image'])) {
    $errors['image'] = "image is empty";
}




if (count($errors) > 0) {
    echo json_encode($errors);
    return;
} 


$name = $_POST['name'];
$authorname = $_POST['authorname'];
$edition = $_POST['edition'];
$cost = $_POST['cost'];


$info = pathinfo($_FILES['image']['name']);
$ext = $info['extension']; // get the extension of the file
$date = new DateTime();
$newname = $date->getTimestamp().'.'.$ext; 

$target = 'images/'.$newname;
move_uploaded_file($_FILES['image']['tmp_name'], $target);

$db = new DB_Functions();
$result = $db->storeBook($name, $authorname, $cost, $newname, $edition);
// check if row inserted or not
if ($result) {
    // successfully inserted into database
    $response["success"] = 1;
    $response["message"] = "Book successfully inserted.";

    // echoing JSON response
    echo json_encode($response);
} else {
    // failed to insert row
    $response["success"] = 0;
    $response["message"] = "Oops! An error occurred.";

    // echoing JSON response
    echo json_encode($response);
}

?>

