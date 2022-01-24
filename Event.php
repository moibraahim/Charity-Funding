<head>
<meta charset="UTF-8">
<title>create event Form</title>
</head>
<body>


<h1>create event Form</h1>
<form action="./controllers/Events.php" method="post">
    <p>
        <label for="name">event Name:</label>
        <input type="text" name="name" id="name">
    </p>
    <p>
        <label for="code">event code:</label>
        <input type="text" name="code" id="code">
    </p>
    <p>
        <label for="description">event description:</label>
        <input type="text" name="description" id="description">
    </p>
    <p>
        <label for="location">event location:</label>
        <input type="text" name="location" id="location">
    </p>
    <input type="submit" value="Submit">
</form>
<br>
<?php
////viewing event rows
  $con = mysqli_connect('localhost','root','','charityfunding');
  $query = "SELECT * FROM event";
$results=mysqli_query($con,$query);
$row_count=mysqli_num_rows($results);
echo '<h1>events</h1>';
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
<br><br>

</body>
</html>
