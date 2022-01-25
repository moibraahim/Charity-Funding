<head>
<meta charset="UTF-8">
<title>create event Form</title>
<link rel="stylesheet" type="text/css" href="../../style.css" />

</head>
<body>



<form method="post" action="../../controllers/Users.php">
        <input type="hidden" name="type" value="register">
        <input type="text" name="userfullname" placeholder="Enter your full name">
        <input type="text" name="username" placeholder="Enter your unique username">
        <input type="text" name="useremail" placeholder="Enter your email">
        <input type="number" name="userage" placeholder="Enter your age">
        <input type="password" name="userpassword" placeholder="Enter user password">
        <input type="password" name="repeatpassword" placeholder="Repeat user password">
        <button type="submit" name="submit">Add User</button>
    
    </form>

</body>
