<head>
<meta charset="UTF-8">
<title>View Event</title>
<link rel="stylesheet" type="text/css" href="../../style.css" />

</head>

<?php
////viewing event rows
  $con = mysqli_connect('localhost','root','','charityfunding');
  $query = "SELECT * FROM event";
$results=mysqli_query($con,$query);
$row_count=mysqli_num_rows($results);
echo '<h1 style="text-align:center;">All Events</h1>';
  echo "<table>";
  echo '<th><p>id</p></th>';
  echo '<th><p>name</p></th>';
  echo '<th><p>code</p></th>';
  echo '<th><p>description</p></th>';
  echo '<th><p>location</p></th>';
  echo '<th><p>isdeleted</p></th>';
  echo '<th><p>createdat</p></th>';
  echo '<th><p>updatedat</p></th>';
while ($row = mysqli_fetch_array($results)) {
    //output a row here
    echo '<tr>';
    echo '<td>'.($row['id']).'</td><td>'.($row['name']).'</td><td>'.($row['code']).'</td><td>'.($row['description']).'</td><td>'.($row['location']).'</td><td>'.($row['isdeleted']).'</td><td>'.($row['createdat']).'</td><td>'.($row['updatedat']).'</td><br>';
    echo '</tr>';
}
echo "</table>";
  $conn = NULL;
?>