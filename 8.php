<?php
include("bld.php");

$sql = "select*from blood";
$result = $c->query($sql);

if ($result->num_rows > 0) 
{
	echo "<table border='5' style='font-size:120%;width:60%;margin-left:auto;margin-right:auto;'>
	<br><br><br><br><br><br><br><br>
	<tr>
		<th>BLOOD ID</th>
		<th>BLOOD TYPE</th>
		<th>DONAR ID</th>
</tr>";

while($row = $result->fetch_assoc())
{
	echo "<tr>";
		echo "<td>" . $row['blood_id'] . "</td>";
		echo "<td>" . $row['blood_type'] . "</td>";
		echo "<td>" . $row['dnr_id'] . "</td>";
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