<?php
include("bld.php");
$patient_id="";
$patient_name="";
$patient_used_bld="";

if(isset($_POST['save_patient']))
{
	$patient_id=$_POST['p_id'];
	$patient_name=$_POST['p_n'];
	$patient_used_bld=$_POST['bd_id'];
	
	$query="Insert into patient(patientID ,patientName,userBlood_id) values('$patient_id','$patient_name','$patient_used_bld')";
	mysqli_query($c,$query);
	header("location:MENU.html");
}
?>
