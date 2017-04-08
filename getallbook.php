
<?php
 
/*
 * Following code will list all the products
 */
 
// array for JSON response
$response = array();
require_once 'include/DB_Functions.php';
$db = new DB_Functions();

$books = $db->getBooks();
if ($books) {
    echo json_encode(array('books' => $books));
} else {
  echo json_encode(array('books' => array()));   
}
 
?>
