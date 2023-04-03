<?php
session_start();
if ($_SESSION["islog"]==0) header("Location: login.php");  
$db = mysql_pconnect("localhost","user120","gun_centos_user_120");
mysql_select_db("user120");

$justquery="SELECT  id1 FROM messages WHERE id1=$_SESSION[islog] OR id2=$_SESSION[islog] UNION ALL SELECT  id2 FROM messages WHERE id1=$_SESSION[islog] OR id2=$_SESSION[islog]";
$subquery="SELECT DISTINCT(id1) FROM  ($justquery) as wtf WHERE id1!=$_SESSION[islog]";
$qr="SELECT accounts.id ,name, surname FROM accounts WHERE accounts.id IN ($subquery)";


$result=mysql_query($qr);

//запрос, который находит id всех уникальных собеседников у этого аккаунта

$result2=mysql_query("SELECT id1, count(*) FROM messages WHERE id2=$_SESSION[islog] AND isread=0 GROUP BY id1");
    for ($i=0;$i<mysql_num_rows($result2);$i++)
    {
        $row2=mysql_fetch_row($result2);
        $sas=$row2[0];
        $mas2[$sas]="<font color=red> +".$row2[1]." new messages</font>";
    }
//запрос, чтобы сразу открыть уведомления о новых сообщениях

//потому нужно сделать чтобы собеседники были отсортированы по дате

?>


<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../stul.css"/>
    <script type="text/javascript" src="../jquery/lib/jquery-1.7.2.js"></script>
    <script type="text/javascript">
    $(document).ready
    (
        function()
        {
            setInterval
            (
                function()
                {
                    $.getJSON("notification.php",
                    function(data)
                    {
                        
                        if (data.length>0)
                        {
                            for (i=0;i<data.length;i+=2)
                            {
                                var bbb= ".notif" + data[i];
                                var ccc = "<font color=red> +" + data[1+i]+" new messages</font>";
                                $(bbb).html(ccc);
                            }

                        }                        
                    }
                    );

                }
                ,3000
            );
            



        }
    );


    </script>
    </head>
    <body>
        <p>Messages</p>
        <?php 
        if (mysql_num_rows($result)==0) echo "You haven't had any conversations yet.";
        else
        for ($i=0;$i<mysql_num_rows($result);$i++)
        {
            $row=mysql_fetch_row($result);
            echo "<a href=chat.php?id2=$row[0]&name=$row[1]&surname=$row[2]>$row[1] $row[2]</a>";
            $bbf="<span class=notif";
            $bbf .= "$row[0]>";
            $fuf=$row[0];
            $bbf .= "$mas2[$fuf]</span><br>";
            echo $bbf;
        }
        ?>
        <br><a href="../page.php">back</a>
    </body>
</html>