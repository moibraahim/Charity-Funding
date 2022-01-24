<?php
include_once ("../Event.php");
// Define variables and initialize with empty values
$name = $code = $description =$location= "";
// Processing form data when form is submitted




if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $input_name = trim($_POST["name"]);
    $name = $input_name;
    $input_code = trim($_POST["code"]);
    $code = $input_code;
    $input_description = trim($_POST["description"]);
    $description = $input_description;   
    $input_location = trim($_POST["location"]);
    $location = $input_location;    
    include_once '../models/Event.php';
    $creator = new event(0);
    $creator->insert($name,$code,$description,$location);
}
?>
