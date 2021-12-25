<?php


require_once '...model/User.php'
class User
{
    private $UserModel;

    public function __construct()
    {
        $this->UserModel = new User;
    }
    public function register()
    {
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
        $data = [
            'username' => trim($_POST['username']),
            'fullname' => trim($_POST['fullname']),
            'email' => trim($_POST['email']),
            'age' => trim($_POST['age']),
            'password' => trim($_POST['password']),
            'passwordrepeat' => trim($_POST['passwordrepeat'])
        ];
    }
}

$init = new User;



// Ensure that user is sending a post request
if($_SERVER['REQUEST_METHOD'] == 'POST'){

    switch($_POST['type']){
        case 'register':
            $init->register();
            break;
        case 'login':
            $init->login();
            break;
        default:
        redirect("./index.php");
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
