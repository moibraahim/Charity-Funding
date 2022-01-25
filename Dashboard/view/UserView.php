<head>
<meta charset="UTF-8">
<title>View Event</title>
<link rel="stylesheet" type="text/css" href="../../style.css" />

</head>

<?php
////viewing event rows
  $con = mysqli_connect('localhost','root','','charityfunding');
  $query = "SELECT * FROM user";
$results=mysqli_query($con,$query);
$row_count=mysqli_num_rows($results);
echo '<h1 style="text-align:center;">All Users</h1>';
  echo "<table>";
  echo '<th><p>user id</p></th>';
  echo '<th><p>username</p></th>';
  echo '<th><p>user fullname</p></th>';
  echo '<th><p>user email</p></th>';
  echo '<th><p>user age</p></th>';
  echo '<th><p>user type id</p></th>';
  echo '<th><p>join date</p></th>';
  echo '<th><p>updated at</p></th>';
while ($row = mysqli_fetch_array($results)) {
    //output a row here
    echo '<tr>';
    echo '<td>'.($row['userid']).'</td><td>'.($row['username']).'</td><td>'.($row['userfullname']).'</td><td>'.($row['useremail']).'</td><td>'.($row['userage']).'</td><td>'.($row['usertypeid']).'</td><td>'.($row['joindate']).'</td><td>'.($row['updatedat']).'</td><br>';
    echo '</tr>';
}
echo "</table>";
  $conn = NULL;
?>