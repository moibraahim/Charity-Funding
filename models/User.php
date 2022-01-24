<?php
require_once '../libraries/Database.php';

class User {

    private $db;

    public function __construct(){
        $this->db = new Database;
    }

    //Find user by email or username
    public function findUserByEmailOrUsername($email, $username){
        $this->db->query('SELECT * FROM user WHERE username = :username OR useremail = :email');
        $this->db->bind(':username', $username);
        $this->db->bind(':email', $email);

        $row = $this->db->single();

        //Check row
        if($this->db->rowCount() > 0){
            return $row;
        }else{
            return false;
        }
    }

   
    //Register User
    public function register($data){
        $ipaddress = $_SERVER['REMOTE_ADDR'];
        // Later :ipaddress
        $this->db->query('INSERT INTO user (username, userfullname, useremail, userage, userpassword, joindate , ipaddress) 
        VALUES (:username, :userfullname, :useremail, :userage, :userpassword, CURRENT_TIME(), "127.0.0.1" )');
        //Bind values
        $this->db->bind(':username', $data['username']);
        $this->db->bind(':userfullname', $data['userfullname']);
        $this->db->bind(':useremail', $data['useremail']);
        $this->db->bind(':userage', $data['userage']);
        $this->db->bind(':userpassword', $data['userpassword']);
        //Execute
        if($this->db->execute()){
            return true;
        }else{
            return false;
        }
    }

<<<<<<< HEAD
    
=======
    //Donation List
    public function GetDonationList()
        {
            $conn = mysqli_connect('localhost', 'root','' , "charityfunding");
            // Check connection
            if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT userid, username, userage FROM user";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) 
            {
            // output data of each row
            while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["userid"]. "</td><td>" . $row["username"] . "</td><td>" . $row["userage"]. "</td></tr>";
            }
            echo "</table>";
            } 
            else 
            { 
                echo "0 results"; 
            }

        }

>>>>>>> 703f9820bc3f12e76aa505748446b0f6ba77071a
    //Login user
    public function login($nameOrEmail, $password){
        $row = $this->findUserByEmailOrUsername($nameOrEmail, $nameOrEmail);

        if($row == false) return false;

        $hashedPassword = $row->userpassword;
        if(password_verify($password, $hashedPassword)){
            return $row;
        }else{
            return false;
        }
    }

    
}