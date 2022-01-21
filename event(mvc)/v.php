<?php
class eventview
{
     function eventdet($obj)
    {        
        echo "name" . $obj->name ."<br>";
        echo "code" . $obj->code ."<br>";
        echo "description" . $obj->description ."<br>"; 
        echo "location" . $obj->location ."<br>"; 
        echo "isdeleted" . $obj->isdeleted ."<br>"; 
        echo "createdat" . $obj->createdat ."<br>"; 
        echo "updatedat" . $obj->updatedat ."<br>";         
    }
}

?>