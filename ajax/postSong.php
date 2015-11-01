<?php
$data = json_decode(file_get_contents("php://input"));
$song = mysql_real_escape_string($data->song);
$artist = mysql_real_escape_string($data->artist);
$link = mysql_real_escape_string($data->link);

$con = mysql_connect('localhost', 'root', 'alaba1515');
mysql_select_db('db_studio_list', $con);

$qry_em = 'select count(*) as cnt from users where email ="' . $uemail . '"';
$qry_res = mysql_query($qry_em);
$res = mysql_fetch_assoc($qry_res);

if ($res['cnt'] == 0) {
    $qry = 'INSERT INTO users (name,pass,email) values ("' . $usrname . '","' . $upswd . '","' . $uemail . '")';
    $qry_res = mysql_query($qry);
    if ($qry_res) {
        $arr = array('msg' => "User Created Successfully!!!", 'error' => '');
        $jsn = json_encode($arr);
        print_r($jsn);
    } else {
        $arr = array('msg' => "", 'error' => 'Error In inserting record');
        $jsn = json_encode($arr);
        print_r($jsn);
    }
} else {
    $arr = array('msg' => "", 'error' => 'User Already exists with same email');
    $jsn = json_encode($arr);
    print_r($jsn);
}
?>
