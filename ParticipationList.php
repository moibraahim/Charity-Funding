<?php 
    include_once 'header.php';
    include_once './helpers/session_helper.php';
?>
<!DOCTYPE html>
<html>
<head>
<title>Table with database</title>
<style>
table {
border-collapse: collapse;
width: 100%;
color: #51c214;
font-family: monospace;
font-size: 25px;
text-align: left;
}
th {
background-color: #51c214;
color: white;
}
tr:nth-child(even) {background-color: #f2f2f2}
</style>
</head>
<body>
<h1 class="header">Participation List</h1>
<table>
<tr>
<th>Username</th>
<th>Event Name</th>
<th>Details</th>
<th>Date</th>
</tr>
<?php 
$conn = mysqli_connect('localhost', 'root','' , "charityfunding");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$result = $conn->query("SELECT* FROM Participation_List;");
if ($result->num_rows > 0) 
{
// output data of each row
while($row = $result->fetch_assoc()) {
echo  "</td><td>" . $row["username"]. "</td><td>" . $row["name"] . "</td><td>" . $row["description"] . "</td><td>" . $row["createdat"].  "</td></tr>";
}
echo "</table>";
} 
else 
{ 
    echo "0 results"; 
}

?>
</table>
</body>
</html>
<?php 
    include_once 'footer.php'
?>
<?php 
    include_once 'header.php';
    include_once './helpers/session_helper.php';
?>