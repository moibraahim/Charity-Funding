<?php
include_once ("../view/EventDelete.php");
// Define variables and initialize with empty values
$name = $code = $description =$location= "";
// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = ($_POST["id"]);
    include_once '../models/EventDelete.php';
    $creator = new event(0);
    $creator->dlt($id);
}
?>