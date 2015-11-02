<?php
include('../includes/config.php');

$query="select distinct s.songName, s.artist, s.link from songs s order by s.songName";
$mysqli->set_charset('utf8mb4');
$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

$arr = array();
if($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$arr[] = $row;
	}
}
# JSON-encode the response
$json_response = json_encode($arr);

// # Return the response
echo $json_response;
?>
