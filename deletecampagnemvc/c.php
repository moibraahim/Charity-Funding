<?php
include_once ("v.php");
// Define variables and initialize with empty values
// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = ($_POST["id"]);
    include_once 'm.php';
    $creator = new campaign(0);
    $creator->dlt($id);
}
?>