<?php

include('../includes/config.php');

$errors = array();
$data = array();
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);

$song = $_POST['song'];

$query="DELETE FROM songs WHERE songName = 1;";
$mysqli->set_charset('utf8mb4');
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

?>