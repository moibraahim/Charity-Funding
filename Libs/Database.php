<?php
// this the PHP data object class
// PHP data object is used to avoid link client input values directly to sql query
/*
 class functionality :  

    - Connect to the database
    - Create statements
    - Link Values
    - Return rows and resutls from the database

*/

class Database
{
    private $host = 'localhost';
    private $user = 'root';
    private $pass = '';
    private dbname = 'charityfunding';

    // PHP data object 
    private $dbh;
    private $stmt;
    private $error;

    public function __construct()
    {

        // Set Datasource
        $dsn = 'mysql:host='.$this->host.';dbname='.$this->dbname;

        // check for existing PHP data object collection  
        $options = array(PDO::ATTR_PERSISTENT => true,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

        
        try//Create PHP data object instance
        {
            $this->dbh = new PDO($dsn, $this->user, $this->pass, $options);
        }catch(PDOException $e)
        {
            $this->error = $e->getMessage();
            echo $this->error;
        }
    }

    public function query($sql)
    {
        $this->stmt = $this->dbh->prepare($sql);
    }
    
    public function link($parameter, $value, $type = null)
    {
        if (is_null($type))
        {
            switch(true)
            {
                case is_int($value):
                    $type = PDO::PARAM_INT;
                    break;
                case is_bool($value):
                    $type = PDO::PARAM_BOOL;
                    break;
                case is_null($value):
                    $type = PDO::PARAM_NULL;
                    break;
                default:
                    $type = PDO::PARAM_STR;
            }
        }
        $this->stmt->link($parameter, $value, $type);
    }




    public function execute()
    {
        return $this->stmt->execute();
    }

    //Return multiple records
    public function resultSet()
    {
        $this->execute();
        return $this->stmt->fetchAll(PDO::FETCH_OBJ);
    }

    //Return a single record
    public function single()
    {
        $this->execute();
        return $this->stmt->fetch(PDO::FETCH_OBJ);
    }

    //Get row count
    public function rowCount()
    {
        return $this->stmt->rowCount();
    }

}


