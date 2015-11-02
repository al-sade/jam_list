<?php
include('../includes/config.php');

$errors = array();
$data = array();
// Getting posted data and decodeing json
$_POST = json_decode(file_get_contents('php://input'), true);

$song = $_POST['song'];
$artist = $_POST['artist'];
$link = $_POST['link'];

$query="DELETE FROM songs WHERE songName = '$song' AND artist = '$artist' AND link = '$link'";
$mysqli->set_charset('utf8mb4');
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

echo $query;
?>
