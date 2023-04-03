<?php
        session_start();
        if ($_SESSION["islog"]==0) header("Location: login.php");  
        $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
        mysql_select_db("user120");
        mysql_query("UPDATE accounts SET avatar='$_GET[avatar]' WHERE id=$_SESSION[islog]");
        $_SESSION["avatar"]=$_GET["avatar"];
?>