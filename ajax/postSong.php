<?php

include('../includes/config.php');



$errors = array();
$data = array();
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);

$query="INSERT INTO songs (songName,artist,link) VALUES ('".$_POST['song']."','".$_POST['artist']."','".$_POST['link']."');";
$mysqli->set_charset('utf8mb4');
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

// checking for blank values.
if (empty($_POST['song']))
  $errors['song'] = 'Song is required.';

if (empty($_POST['artist']))
  $errors['artist'] = 'Artist is required.';

if (empty($_POST['link']))
  $errors['link'] = 'Link is required.';

if (!empty($errors)) {
  $data['errors']  = $errors;
} else {
  $data['message'] = 'Form data is going well';
}
// response back.
echo json_encode($data);
?>