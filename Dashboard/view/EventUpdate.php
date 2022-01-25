<head>
<meta charset="UTF-8">
<title>Update Events</title>
<link rel="stylesheet" type="text/css" href="../../style.css" />
</head>
<body>

<h1 style="text-align:center;">Update Events</h1>
<form action="../controllers/EventsUpdate.php" method="post">
    <p>
        <label for="id">event id:</label>
        <input type="text" name="id" id="id">
    </p>
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
    <input type="submit" value="Submit">
</form>


<br><br>

</body>
</html>