<?php
    session_start();
    $db = mysql_pconnect("localhost", "user120", "gun_centos_user_120");
	mysql_select_db("user120");
    if($_SESSION["islog"]==0)
    {
        if (!$_POST["submit"]) header("Location: login.php");//разлог, не входил
        else // разлог, отправил данные на проверку
        {
            $result=mysql_query("SELECT * FROM accounts WHERE login='$_POST[login]' AND password='$_POST[password]'");
            if (mysql_num_rows($result)==0) header("Location: login.php?failure=1"); //разлог данные некорректные
            else
            {
                //разлог данные корректные
                $row=mysql_fetch_row($result);
                $_SESSION["islog"]=$row[0];
                $_SESSION["login"]=$row[1];
                $_SESSION["password"]=$row[2];
                $_SESSION["name"]=$row[3];
                $_SESSION["surname"]=$row[4];
                $_SESSION["avatar"]=$row[5];
                header("Location: page.php");//редиректимся сюда же, чтобы форма не отправлялась повторно
            }            
        }
    }
    // мы в аккаунте
    $result2=mysql_query("SELECT count(*) FROM messages WHERE id2=$_SESSION[islog] AND isread=0");
    
?>

<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="stul.css"/>
    <script type="text/javascript" src="jquery/lib/jquery-1.7.2.js"></script>
    <script type="text/javascript">
    $(document).ready
    ( 
        function()
        {
            setInterval
            (
 
                function()
                {

                    $.getJSON("notification_forpage.php",
                    function(data)
                    {                   
                        if (data[0]>0)
                        {
                            $(".notif").html("<font color=red> +" +data + " new messages</font>");                                                                                             
                        }                        
                    }
                    );

                }
                ,3000
            );
            $("#pic").on("click", function()
            {
                
                var str="<select id=picsel>";
                for (i=0;i<17;i++)
                {
                    str=str+"<option>avatar"+i+".jpg</option>";
                }
                str+="</select>";
                $("#pic").prop("disabled", true);
                $("#piclist").append(str);
                $("#piclist").append("<button id=pic_acc>Accept</button>")
                
                $("#pic_acc").on("click",function()
                {
                    var sss=$("#picsel option:selected").html();
                    var aaa="<img src=http://217.71.139.74/~user120/course/imgs/"+sss+" width=300 height=300>";
                    $("#divimg").html(aaa);
                    $("#piclist").empty();
                    $("#pic").prop("disabled", false);
                    var ddd="changepic.php?avatar="+sss;
                    $.get(ddd);
                }
                );
            }
            );



        }
    );


    </script>
    </head>
    <body>
        <p> <?php echo "Welcome back, $_SESSION[name] $_SESSION[surname]";?></p>
        <div id="divimg"><img src=<?php 
        echo 'http://217.71.139.74/~user120/course/imgs/'.$_SESSION["avatar"];
        ?> width="300" height="300"> </div>
        <br><button id="pic">Profile Picture</button>
        <div id="piclist"></div>
        <br><a href="chat/message.php">Messages</a><span class="notif">
        <?php $row2=mysql_fetch_row($result2);if ($row2[0]>0){echo "<font color=red> +$row2[0] new messages</font>";}  ?></span>
        <br><a href="browse.php">Browse</a>
        <br><br>
        <a href="login.php">Quit</a>
    </body>
</html>