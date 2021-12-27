<?php 
    include_once 'header.php'
?>

    <h1 id="index-text">Welcome, <?php if(isset($_SESSION['username'])){
        echo explode(" ", $_SESSION['userfullname'])[0];
    }else{
        echo 'Guest';
    } 
    ?> </h1>
    

<?php 
    include_once 'footer.php'
?>