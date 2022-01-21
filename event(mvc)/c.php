<?php
include_once ('m.php');
include_once ("v.php");
if(isset($_REQUEST["id"]))
{
    $eventobj= new event($_REQUEST["id"]);
   // echo($eventobj->name);
    $vv=new eventview();
    $vv->eventdet($eventobj);
}
if($_REQUEST["command"]=="insert")
{
    $eventobj=new event(0);
    $eventobj->insert($_REQUEST["name"],$_REQUEST["code"],$_REQUEST["description"],$_REQUEST["location"]);
}
?>