<?php
include("bld.php");
$blood_id="";
$blood_type="";
$dnr_id="";

if(isset($_POST['blood_enter']))
{
	$blood_id=$_POST['bld_id'];
	$blood_type=$_POST['bld_type'];
	$dnr_id=$_POST['dnr_id'];
	
	$query="insert into blood (blood_id,blood_type,dnr_id) values('$blood_id','$blood_type','$dnr_id')";
	mysqli_query($c,$query);
	header("location:MENU.html");
}
?>