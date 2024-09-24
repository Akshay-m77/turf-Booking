<?php
	include("../../connect/db.php");
	
	$turfrid=$_POST["turfrid"];
	$name=$_POST["name"];
	$licenno=$_POST["licenno"];
	$cntno=$_POST["cntno"];
	$location=$_POST["location"];
	$addr=$_POST["addr"];
	$qty=$_POST["qty"];
	$rate=$_POST["rate"];
	$date=$_POST["date"];

	$desp=$_POST["desp"];
	
	
	
	$image = addslashes(file_get_contents($_FILES['photo']['tmp_name']));
	$image_name = addslashes($_FILES['photo']['name']);
	$image_size = getimagesize($_FILES['photo']['tmp_name']);
	move_uploaded_file($_FILES["photo"]["tmp_name"], "../../photo/" . $_FILES["photo"]["name"]);
	$photo = $_FILES["photo"]["name"];
	
	if($photo=="")
	{
		$sql = "update product set licenno='$licenno',cntno='$cntno',location='$location',addr='$addr',qty='$qty' ,rate='$rate' ,date='$date' ,desp='$desp' where turfrid='$turfrid'";
		$q1 = $db->prepare($sql);
		$q1->execute();
	}
	else
	{
		$sql = "update product set licenno='$licenno',cntno='$cntno',location='$location',addr='$addr',qty='$qty' ,rate='$rate',date='$date',desp='$desp',photo='$photo' where turfrid='$turfrid'";
		$q1 = $db->prepare($sql);
		$q1->execute();
	}

	header("location:../product_view.php");
?>
