<?php
	include("../../connect/db.php");
	
	$cart_id=$_GET["cart_id"];
	
	$stats="Cancel";
	
	$sql = "update cart set stats='$stats' where cart_id='$cart_id'";
	$q1 = $db->prepare($sql);
	$q1->execute();

	header("location:../booking_cancel.php");
?>
