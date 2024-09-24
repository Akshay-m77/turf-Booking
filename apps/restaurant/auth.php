<?php
session_start();
if(!isset($_SESSION['SESS_RESTAURANT_ID']) || (trim($_SESSION['SESS_RESTAURANT_ID']) == '')) {
	header("location:../");
	exit();
}

?>
