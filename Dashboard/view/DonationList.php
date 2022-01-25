<?php
require_once '../../helpers/session_helper.php'; 
if(!isset($_SESSION['username'])){
  //header("Location:Login.php");
  redirect("../../Login.php");  
}
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
<h1 class="header">Donation List</h1>
<table>
<tr>
<th>User-ID</th>
<th>Username</th>
<th>Campain Name</th>
<th>Value</th>
<th>Date</th>
</tr>
<?php 
$conn = mysqli_connect('localhost', 'root','' , "charityfunding");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$result = $conn->query("SELECT* FROM Donation_List;");
if ($result->num_rows > 0) 
{
// output data of each row
while($row = $result->fetch_assoc()) {
echo  "</td><td>" . $row["userid"]. "</td><td>" . $row["username"] . "</td><td>" . $row["name"] . "</td><td>" . $row["value"]. "</td><td>" . $row["createdat"].  "</td></tr>";
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
