<?php
    session_start();
    if ($_SESSION["islog"]==0) header("Location: login.php");  
    $db = mysql_pconnect("localhost","user120","gun_centos_user_120");
    mysql_select_db("user120");    
    if ($_POST["mode"]=="1") mysql_query("UPDATE messages SET messages.text='$_POST[text]' WHERE messages.id='$_POST[id]'");           
    if ($_POST["mode"]=="2") mysql_query("DELETE FROM messages WHERE messages.id='$_POST[id]'"); 
    
    
?>