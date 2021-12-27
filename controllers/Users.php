<?php

    require_once '../models/User.php';
    require_once '../helpers/session_helper.php';

    class Users {
        private $userModel;

        public function __construct(){
            $this->userModel = new User;
        }

        public function register(){
            //Process form
            
            //Sanitize POST data
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

            //Init data
            $data = [
                'userfullname' => trim($_POST['userfullname']),
                'username' => trim($_POST['username']),
                'useremail' => trim($_POST['useremail']),
                'userage' => trim($_POST['userage']),
                'userpassword' => trim($_POST['userpassword']),
                'repeatpassword' => trim($_POST['repeatpassword'])
            ];

            //Validate that inputs is not empty
            if (  empty($data['userfullname']) || empty($data['username']) || empty ($data['useremail']) || empty($data['userage']) || empty($data['userpassword']) || empty($data['repeatpassword'])  )
            {
                flash("register", "Please fill out all inputs");
                redirect("../signup.php");
            }

            if(!preg_match("/^[a-zA-Z0-9]*$/", $data['username'])){
                flash("register", "Invalid username");
                redirect("../signup.php");
            }

            if ($data['userage'] < 0 || $data['userage'] > 100)
            {
                flash("register", "Invalid age");
                redirect("../signup.php");
            }


            if(!filter_var($data['useremail'], FILTER_VALIDATE_EMAIL)){
                flash("register", "Invalid email");
                redirect("../signup.php");
            }

            if(strlen($data['userpassword']) < 6){
                flash("register", "Invalid password");
                redirect("../signup.php");
            } else if($data['userpassword'] !== $data['repeatpassword']){
                flash("register", "Passwords don't match");
                redirect("../signup.php");
            }

            //User with the same email or password already exists
            if($this->userModel->findUserByEmailOrUsername($data['useremail'], $data['userfullname'])){
                flash("register", "Username or email already taken");
                redirect("../signup.php");
            }

            //Passed all validation checks.
            //Now going to hash password
            $data['userpassword'] = password_hash($data['userpassword'], PASSWORD_DEFAULT);

            //Register User
            if($this->userModel->register($data)){
                redirect("../login.php");
            }else{
                die("Something went wrong");
            }
        }

    public function login(){
        //Sanitize POST data
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        //Init data
        $data=[
            'useremail/username' => trim($_POST['useremail/username']),
            'userpassword' => trim($_POST['userpassword'])
        ];

        if(empty($data['useremail/username']) || empty($data['userpassword'])){
            flash("login", "Please fill out all inputs");
            header("location: ../login.php");
            exit();
        }

        //Check for user/email
        if($this->userModel->findUserByEmailOrUsername($data['useremail/username'], $data['useremail/username'])){
            //User Found
            $loggedInUser = $this->userModel->login($data['useremail/username'], $data['userpassword']);
            if($loggedInUser){
                //Create session
                $this->createUserSession($loggedInUser);
            }else{
                flash("login", "Password Incorrect");
                redirect("../login.php");
            }
        }else{
            flash("login", "No user found");
            redirect("../login.php");
        }
    }

    public function createUserSession($user){
        $_SESSION['username'] = $user->username;
        $_SESSION['userfullname'] = $user->userfullname;
        $_SESSION['useremail'] = $user->useremail;
        redirect("../index.php");
    }

    public function logout(){
        unset($_SESSION['username']);
        unset($_SESSION['userfullname']);
        unset($_SESSION['useremail']);
        session_destroy();
        redirect("../index.php");
    }
}

    $init = new Users;

    //Ensure that user is sending a post request
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        switch($_POST['type']){
            case 'register':
                $init->register();
                break;
            case 'login':
                $init->login();
                break;
            default:
            redirect("../index.php");
        }

    }else{
        switch($_GET['q']){
            case 'logout':
                $init->logout();
                break;
            default:
            redirect("../index.php");
        }
    }

