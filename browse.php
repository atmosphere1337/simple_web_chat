<?php
    session_start();
    if ($_SESSION["islog"]==0) header("Location: login.php");  
    $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
	mysql_select_db("user120");

?>

<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="stul.css"/>
    </head>
    <body>
        Name <input type="text"><br>
        Surname <input type="text"><br>
        <input type="submit">
        <?php
        $query = "SELECT id, name, surname FROM accounts WHERE id!= $_SESSION[islog]";
        $result = mysql_query($query);
        $num_results = mysql_num_rows($result);
        
        echo "<table border=1>";
        for ($i=0; $i < $num_results; $i++)
        {
            $row  = mysql_fetch_row($result);
            echo "<tr>"; 

            echo "<td>$row[1] $row[2]</td><td><a href=chat/chat.php?id2=$row[0]&name=$row[1]&surname=$row[2]>start chatting</a></td>";
            echo "</tr>";
        }
        echo "</table>";
        
        
        ?>
        <a href="page.php">Back</a>
    </body>
</html>