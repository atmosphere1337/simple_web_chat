<?php

// отправляем message.php двумерный массив с id отправителей и кол-во новых сообщений
if($_SERVER["HTTP_X_REQUESTED_WITH"] == "XMLHttpRequest")
{
    session_start();
    if ($_SESSION["islog"]==0) header("Location: login.php");  
       header('Content-Type: application/json; charset=utf-8');
    $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
    mysql_select_db("user120");
    $result=mysql_query("SELECT id1, count(*) FROM messages WHERE id2=$_SESSION[islog] AND isread=0 GROUP BY id1");
    for ($i=0;$i<mysql_num_rows($result);$i++)
    {
        $row=mysql_fetch_row($result);
        $mas[]=$row[0];
        $mas[]=$row[1];
    }
    echo json_encode($mas);
       
}
?>