<?php
class campaign {
    public $id;
    public $name;
    public $goalprice;
    public $code;
    public $description;
    public $isdeleted;
    public $createdat;
    public $updatedat;
    function __construct($id)
    {
     $con = mysqli_connect('localhost','root','','charityfunding');
     $sql="select * from campaign where id=$id";
     $campdataset = mysqli_query($con,$sql);
     if($row =mysqli_fetch_array($campdataset))
     {
         $this->name=$row["name"];
         $this->goalprice=$row["goalprice"];
         $this->code=$row["code"];
         $this->description=$row["description"];
         $this->isdeleted=$row["isdeleted"];
         $this->createdat=$row["createdat"];
         $this->updatedat=$row["updatedat"];
     }
    }
    function insert($name,$goalprice,$code,$description)
{
    $con = mysqli_connect('localhost','root','','charityfunding');   
    $sql="INSERT INTO campaign( name,goalprice, code, description) VALUES ('$name','$goalprice','$code','$description')";
    //echo $sql;
    if ($con->query($sql) === TRUE) {
        echo "Record created successfully.";
    }
    else{
        echo "erororororroo". mysqli_error($con);;
    }
}

}
