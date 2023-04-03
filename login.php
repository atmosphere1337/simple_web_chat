<?php
session_unset();
session_start();
$_SESSION["islog"]=0;
?>

<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="stul.css"/>
    </head>

    <body>
        <form action="page.php" method="POST">
            <input type="text" name="login"><br>
            <input type="password" name="password"><br>
            <?php if ($_GET["failure"]==1)echo "<font color=red> Invalid Login or Password</font><br>";?>
            <input type="submit" name="submit">
        </form>
        <a href="registr/register.php">Register</a>
    </body>
</html>