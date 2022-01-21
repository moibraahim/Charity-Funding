<?php
class event
{
public $id;
public $name;
public $code;
public $description;
public $location;
public $isdeleted;
public $createdat;
public $updatedat;
function insert($name,$code,$description,$location)
{
    $con = mysqli_connect('localhost','root','','charityfunding');   
    $sql="INSERT INTO event( name, code, description, location) VALUES ('$name','$code','$description','$location')";
    echo $sql;
    $eventdataset = mysqli_query($con,$sql);
}
function __construct($id)
{
 $con = mysqli_connect('localhost','root','','charityfunding');
 $sql="select * from event where id=$id";
 $eventdataset = mysqli_query($con,$sql);
 if($row =mysqli_fetch_array($eventdataset))
 {
     $this->name=$row["name"];
     $this->code=$row["code"];
     $this->description=$row["description"];
     $this->location=$row["location"];
     $this->isdeleted=$row["isdeleted"];
     $this->createdat=$row["createdat"];
     $this->updatedat=$row["updatedat"];
 }
}
}
$eventob= new event(0);
//$eventob->insert("charity lol","tysjsnw","collect ppl to....","luxor"); 
//echo($eventob->name);
?>