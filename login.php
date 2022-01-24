<?php 
    include_once 'header.php';
    include_once './helpers/session_helper.php';
?>
    <h1 class="header">Please Login</h1>

    <?php flash('login') ?>

    <form method="post" action="./controllers/Users.php">
    <input type="hidden" name="type" value="login">
    <input type="text" name="useremail/username" placeholder="Enter your username or email">
    <input type="password" name="userpassword" placeholder="Enter your password">
    <button type="submit" name="submit">Log In</button>
    </form>

    <div class="form-sub-msg"><a href="./ParticipationList.php">Forgotten Password?</a></div>
    
<?php 
    include_once 'footer.php'
?>