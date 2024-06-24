<?php
include("bld.php");

$sql = "select*from donar";
$result = $c->query($sql);

if ($result->num_rows > 0) 
{
	echo "<table border='5' style='font-size:120%;width:60%;margin-left:auto;margin-right:auto;'>
	<br><br><br><br><br><br><br><br>
	<tr>
		<th>Id</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>GENDER</th>
		<th>BLOOD PRESSURE</th>
		<th>CHECKED BY(DOC ID)</th>
</tr>";

while($row = $result->fetch_assoc())
{
	echo "<tr>";
		echo "<td>" . $row['donar_id'] . "</td>";
		echo "<td>" . $row['donar_name'] . "</td>";
		echo "<td>" . $row['age'] . "</td>";
		echo "<td>" . $row['gender'] . "</td>";
		echo "<td>" . $row['bp'] . "</td>";
		echo "<td>" . $row['doc_id'] . "</td>";
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