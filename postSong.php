<?php
    include '/var/www/studio.dev/includes/config.php';

		$query="select distinct s.songName, s.artist, s.link from songs s order by s.songName";
		$mysqli->set_charset('utf8mb4');
		$result = $mysqli->query($query) or die($mysqli->error.__LINE__);

    $errors = array();
    $data = array();
    // Getting posted data and decodeing json
    $_POST = json_decode(file_get_contents('php://input'), true);

    // checking for blank values.
    if (empty($_POST['song'])) {
        $errors['song'] = 'Song is required.';
    }

    if (empty($_POST['artist'])) {
        $errors['artist'] = 'Artist is required.';
    }

    if (empty($_POST['link'])) {
        $errors['link'] = 'Link is required.';
    }

    if (!empty($errors)) {
        $data['errors'] = $errors;
    } else {
        $data['message'] = 'Form data is going well';
    }
    // response back.
    echo json_encode($data);
		
    ?>
