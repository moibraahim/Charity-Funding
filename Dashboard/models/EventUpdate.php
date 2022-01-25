<?php
class event {
    public $id;
    public $name;
    public $code;
    public $description;
    public $location;
    public $isdeleted;
    public $createdat;
    public $updatedat;
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
    function updt($id, $name,$code,$description,$location)
{
    $timestamp = date('Y-m-d H:i:s');
    $con = mysqli_connect('localhost','root','','charityfunding');   
    $mysqli_query_statement = "UPDATE event SET name='$name',code ='$code',description='$description',location='$location',updatedat='$timestamp' WHERE id=$id";

    if ($con->query($mysqli_query_statement) === TRUE) {
        echo "Record updated successfully.";
    }
    else{
        echo "error". mysqli_error($con);;
    }
}

}
