<?php
include_once ("v.php");
// Define variables and initialize with empty values
$name = $code = $description = "";
// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $input_name = trim($_POST["name"]);
    $name = $input_name;
    $goalprice=($_POST["goal"]);
    $input_code = trim($_POST["code"]);
    $code = $input_code;
    $input_description = trim($_POST["description"]);
    $description = $input_description;    
      if (  empty($name) || empty($goalprice) || empty ( $code) || empty( $description))
    {        
        echo '<script type="text/javascript">alert("Please fill out all inputs");</script>';
    }
    elseif(preg_match("/^[a-zA-Z0-9]+$/", $name) == 1) {
        echo '<script type="text/javascript">alert("enter a proper name");</script>';
    }
    elseif ($goalprice < 0)
    {
        echo '<script type="text/javascript">alert("enter proper price");</script>';
    }
    else{
    include_once 'm.php';
    $creator = new campaign(0);
    $creator->insert($name,$goalprice,$code,$description);
    }
}
?>
