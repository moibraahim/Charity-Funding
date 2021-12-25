<?php 
    include_once 'header.php';
    include_once './helpers/session_helper.php';
?>

    <h1 class="header">Please Signup</h1>

    <?php flash('register') ?>

    <form method="post" action="../controllers/Users.php">
        <input type="hidden" name="type" value="register">
        <input type="text" name="username" placeholder="Enter Your User Name">
        <input type="text" name="fullname" placeholder="Enter Your Full Name">
        <input type="text" name="email" placeholder="Enter Your Email">
        <input type="text" name="age" placeholder="Enter Your Age">
        <input type="password" name="password" placeholder="Enter Password">
        <input type="password" name="passwordrepeat" placeholder="Repeat password">
        <button type="submit" name="submit">Sign Up</button>
    </form>
    
<?php 
    include_once 'footer.php'
?>