<?php
session_start();
if ($_SESSION["islog"]==0) header("Location: login.php");  
if ($_SESSION["reciever_id"]!=$_GET["id2"])// Просто редирект 
{
    $_SESSION["reciever_id"]=$_GET["id2"];
    $_SESSION["reciever_name"]=$_GET["name"];
    $_SESSION["reciever_surname"]=$_GET["surname"];
   // header("Location: chat.php?id2=$_GET[id2]&name=$_GET[name]&surname=$_GET[surname]");
    
}

$db = mysql_pconnect("localhost","user120","gun_centos_user_120");
mysql_select_db("user120");

$result = mysql_query("UPDATE messages SET isread=true WHERE id2=$_SESSION[islog] AND id1=$_SESSION[reciever_id]  AND isread=0");
// отметили как прочитано в бд isread=0 -> isread=1
$result = mysql_query("SELECT id1 ,text, id FROM messages WHERE (id1=$_SESSION[reciever_id] OR id2=$_SESSION[reciever_id]) AND (id1=$_SESSION[islog] OR id2=$_SESSION[islog])");
// получили все сообщения

?>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../stul.css"/>
        <meta charset="utf-8">
        <script type="text/javascript" src="../jquery/lib/jquery-1.7.2.js"></script>
        <script type="text/javascript">
        $(document).ready(function()
        {
            setInterval(function()// каждые 3 секунды проверка на новое сообщение
            {
                $.getJSON("recieve.php", function(data)
                {
                    if (data.length>0)
                   for (i=0;i<data.length;i++)
                   {
                   var str="<div class=backs><div class=rght>"
                    str+=data[i];
                   str+="<br>";
                   str+="</div></div>";
                   $(".msg_end").before(str);
                      
                   }
                }
                );
            },3000 //3 секунды
            ); 
            $("#send").on('click',function()//отправка сообщения
            {
                if ($("#text").val()!="") //если поле не пустое
                {
                    $.post("send.php", {text: $("#text").val()});//отправка на сервер
                    var str="<div class=backs>"// рисуем
                    str+=$("#text").val();
                   str+="<br>";
                   str+="</div>";
                   $(".msg_end").before(str);
                   $("#text").val("");
                }
            }
            );


            $(".editbut").on('click',function() // редактируем сообщение
            {
                $(".delbut").prop("disabled", true);
                $(".editbut").prop("disabled", true);
                bufid = "<div id=editcontrol><textarea cols=80 rows=5 id=edittext></textarea><br>";
                bufid += "<button id=editaccept>Accept</button>";
                bufid += "<button id=editcancel>Cancel</button></div>";
                $(this).parent().append(bufid);
                bufid = $(this).parent().attr("id");
                bufid = bufid.slice(2);
                bufid = "#in" + bufid;
                $("#edittext").val($(bufid).text());


                $("#editcancel").on("click", function() // отменяем редактирование
                {
                    $("#editcontrol").remove();
                    $(".delbut").prop("disabled", false);
                    $(".editbut").prop("disabled", false);
                }
                );

                $("#editaccept").on("click", function() // подтверждаем изменния
                {
                    bufid = $(this).parent().parent().attr("id");
                    bufid2 = bufid.slice(2);
                    bufid = "#in" + bufid2;
                    $(bufid).text($("#edittext").val());
                    
                    $("#editcontrol").remove();
                    $(".delbut").prop("disabled", false);
                    $(".editbut").prop("disabled", false);
                    $.post("deledit.php", {mode: "1", id: bufid2, text: $(bufid).html()});
                }
                );



            }
            );

            $(".delbut").on('click',function() // удаляем сообщения
            {
                bufid = $(this).parent().attr("id");
                bufid = bufid.slice(2);
                $.post("deledit.php", {mode: "2", id: bufid});
                bufid = "#ex" + bufid;
                $(bufid).remove();

            }
            );       

                       
        }
        );
        
        </script>
        <style type="text/css">
        .backs
        {
            width:300px;
            height:60px;
            border:#F00 dashed 2px;
        }
        .rght
        {
            text-align:right;
        }
        </style>
    </head>
    <body>
        You are <?php echo "$_SESSION[name] $_SESSION[surname]" ?><br>
        Chatting messages with <?php echo "$_SESSION[reciever_name] $_SESSION[reciever_surname]" ?><br>
        <?php
        for ($i=0;$i<mysql_num_rows($result);$i++)
        {
            $row=mysql_fetch_row($result);
            echo "<div id=ex$row[2]><div class=backs>";
            if ($row[0]==$_SESSION["islog"])echo "<div id=in$row[2]>$row[1]</div>";
            else 
            {
                echo "<div class=rght>";
                echo "<div id=in$row[2]>";
                echo "$row[1]<br>";
                echo "</div>";
                echo "</div>";
            }            
            echo "</div><button class=editbut>Edit</button><button class=delbut>Delete</button></div>";
            
        }
        ?>
        <div class="msg_end"></div><!-- После него будут добавлятьбся новые сообщения-->
        <textarea cols="80" rows="5" id="text"></textarea>
        <button id="send">Send</button>
        <br><a href="message.php">back</a>
    </body>
</html>



