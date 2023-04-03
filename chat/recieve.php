<?php

if($_SERVER["HTTP_X_REQUESTED_WITH"] == "XMLHttpRequest")
{
    session_start();
    if ($_SESSION["islog"]==0) header("Location: login.php");  
     header('Content-Type: application/json; charset=utf-8');
    $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
    mysql_select_db("user120");
    $result=mysql_query("SELECT id, text FROM messages WHERE id2=$_SESSION[islog] AND id1=$_SESSION[reciever_id]  AND isread=0");
    if ($result)
    {
        for ($i=0;$i<mysql_num_rows($result);$i++)
        {
            $row=mysql_fetch_row($result);
            $arr[]=$row[1];
        }
        $result=mysql_query("UPDATE messages SET isread=true WHERE id2=$_SESSION[islog] AND id1=$_SESSION[reciever_id]  AND isread=0");
        echo json_encode($arr);
    } 
}



?>