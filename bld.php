<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "blood_donation";

$c=mysqli_connect($servername,$username,$password,$db_name);
if(!$c)
{
	die("CONNECTION FALIED: ");
}
else
	echo "CONNECTION SUCCESSFUL";
?>