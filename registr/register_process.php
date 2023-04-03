<?php

        $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
        mysql_select_db("user120");
        $qry = "INSERT INTO accounts(login, password, name, surname, avatar) VALUES ";
        $qry .= "('$_POST[login]','$_POST[password]','$_POST[name]','$_POST[surname]','avatar0.jpg')";
        $result=mysql_query($qry);
        if (!$result) header("Location: register.php");
?>                              

<html>
        <head>
                <link rel="stylesheet" type="text/css" href="../stul.css"/>
                <meta charset="utf-8">
        </head>
        <body>
                <p>Congratulation, <?php echo "$_POST[name] $_POST[surname]"?>!</p>
                <br><a href="../login.php">back</a>
        </body>
</html>