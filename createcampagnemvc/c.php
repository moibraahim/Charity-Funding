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
    include_once 'm.php';
    $creator = new campaign(0);
    $creator->insert($name,$goalprice,$code,$description);
}
?>