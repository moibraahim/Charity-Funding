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
    function dlt($id)
{
    $timestamp = date('Y-m-d H:i:s');
    $con = mysqli_connect('localhost','root','','charityfunding');   
    $mysqli_query_statement = "UPDATE event SET isdeleted=1,updatedat='$timestamp' WHERE id=$id";
    if ($con->query($mysqli_query_statement) === TRUE) {
        echo "Record deleted successfully.";
    }
    else{
        echo "erororororroo". mysqli_error($con);;
    }
}

}
