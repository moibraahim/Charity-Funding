<?php 
    include_once 'header.php';
    include_once './helpers/session_helper.php';
?>

    <h1 class="header">Please Signup</h1>

    <?php flash('register') ?>

    <form method="post" action="./controllers/Users.php">
        <input type="hidden" name="type" value="register">
        <input type="text" name="userfullname" placeholder="Enter your full name">
        <input type="text" name="username" placeholder="Enter your unique username">
        <input type="text" name="useremail" placeholder="Enter your email">
        <input type="number" name="userage" placeholder="Enter your age">
        <input type="password" name="userpassword" placeholder="Enter your password">
        <input type="password" name="repeatpassword" placeholder="Repeat your password">
        <button type="submit" name="submit">Sign Up</button>
    </form>
    
<?php 
    include_once 'footer.php'
?>