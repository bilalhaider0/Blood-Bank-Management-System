<?php
include("bld.php");

$sql = "select doctor_id,doctor_name from doctor";
$result = $c->query($sql);

if ($result->num_rows > 0) 
{
	echo "<table border='5' style='font-size:150%;width:50%;margin-left:auto;margin-right:auto;'>
	<br><br><br><br><br><br><br><br>
	<tr>
		<th>Id</th>
		<th>NAME</th>
</tr>";

while($row = $result->fetch_assoc())
{
	echo "<tr>";
		echo "<td>" . $row['doctor_id'] . "</td>";
		echo "<td>" . $row['doctor_name'] . "</td>";
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