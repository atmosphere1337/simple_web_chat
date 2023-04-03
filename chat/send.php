<?php
session_start();
if ($_SESSION["islog"]==0) header("Location: login.php");  
$db = mysql_pconnect("localhost","user120","gun_centos_user_120");
mysql_select_db("user120");
$result = mysql_query("INSERT INTO messages(id1, id2, text, isread) VALUES ($_SESSION[islog], $_SESSION[reciever_id], '$_POST[text]', 0)");
//header("Location: chat.php?id2=$_SESSION[reciever_id]&name=$_SESSION[reciever_name]&surname=$_SESSION[reciever_surname]");
?>