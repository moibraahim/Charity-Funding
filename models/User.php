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