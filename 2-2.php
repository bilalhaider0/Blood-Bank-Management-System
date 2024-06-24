<?php
include("bld.php");
$dnr_id="";
$dnr_name="";
$dnr_age="";
$dnr_bp="";
$dnr_gen="";
$doc_id="";

if(isset($_POST['donor_enter']))
{
	$dnr_id=$_POST['do_id'];
	$dnr_name=$_POST['donor_name'];
	$dnr_age=$_POST['age'];
	$dnr_bp=$_POST['bp'];
	$dnr_gen=$_POST['gen'];
	$doc_id=$_POST['dd_id'];
	
	$query="insert into donar(donar_id,donar_name,age,gender,bp,doc_id) values('$dnr_id','$dnr_name','$dnr_age','$dnr_gen','$dnr_bp','$doc_id')";
	mysqli_query($c,$query);
	header("location: 3.html");
}
?>