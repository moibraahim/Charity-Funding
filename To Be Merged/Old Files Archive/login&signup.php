<form action="action_page.php" method="post">
  

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
<?Php
session_start();
$con =mysqli_connect('localhost','root','');
mysqli_select_db($con,'userregistraion');
$name =$_POST['user'];
$pas =$_POST['password'];
$s ="select * from usertable where name =$'name'";
$result =mysqli_query($con,$s);
$num =mysqli_num_rows($result);
?>

