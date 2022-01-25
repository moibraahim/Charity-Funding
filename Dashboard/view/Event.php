<head>
<meta charset="UTF-8">
<title>create event Form</title>
<link rel="stylesheet" type="text/css" href="../../style.css" />

</head>
<body>


<br>
<h1 style="text-align:center;">create New Event</h1>
<form action="../controllers/Events.php" method="post">
    <p>
        <label for="name">event Name:</label>
        <input type="text" name="name" id="name">
    </p>
    <p>
        <label for="code">event code:</label>
        <input type="text" name="code" id="code">
    </p>
    <p>
        <label for="description">event description:</label>
        <input type="text" name="description" id="description">
    </p>
    <p>
        <label for="location">event location:</label>
        <input type="text" name="location" id="location">
    </p>
    <input type="submit" value="Create">
</form>


</body>
</html>
