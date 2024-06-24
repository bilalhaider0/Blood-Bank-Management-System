<?php
include("bld.php");

$sql = "select*from patient";
$result = $c->query($sql);

if ($result->num_rows > 0) 
{
	echo "<table border='5' style='font-size:120%;width:60%;margin-left:auto;margin-right:auto;'>
	<br><br><br><br><br><br><br><br>
	<tr>
		<th>PATIENT ID</th>
		<th>PATIENT NAME</th>
		<th>USED BLOOD</th>
</tr>";

while($row = $result->fetch_assoc())
{
	echo "<tr>";
		echo "<td>" . $row['patientID'] . "</td>";
		echo "<td>" . $row['patientName'] . "</td>";
		echo "<td>" . $row['userBlood_id'] . "</td>";
	echo "</tr>";
}

echo "</table>";
} 
else 
{
  echo "0 results";
}
$c->close();
?>