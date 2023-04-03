<html>
    <head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../stul.css"/>
    <script type="text/javascript" src="../jquery/lib/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        function val_func(p)
        {
            var mistake=true;
           if ($("#id_name").val().length<4||$("#id_name").val().length>20) 
           {
               $("#sp_name").html("<font color=red>Name is 4-20 symbols length</font>");
               mistake=false;
           } else {$("#sp_name").empty();}
           if ($("#id_surname").val().length<4||$("#id_surname").val().length>20) 
           {
               $("#sp_surname").html("<font color=red>Surname is 4-20 symbols length</font>");
               mistake=false;
           } else {$("#sp_surname").empty();}
           if ($("#id_login").val().length<4||$("#id_login").val().length>16) 
           {
               $("#sp_login").html("<font color=red>login is 4-16 symbols length</font>");
               mistake=false;
           } else {$("#sp_login").empty();}
           if ($("#id_password").val().length<4||$("#id_password").val().length>16) 
           {
               $("#sp_password").html("<font color=red>password is 4-16 symbols length</font>");
               mistake=false;
           } else  {$("#sp_password").empty();}
           if ($("#id_password").val()!=$("#id_conf_password").val()) 
           {
               $("#sp_conf_password").html("<font color=red>confirmation password don't match</font>");
               mistake=false;
           } else  {$("#sp_conf_password").empty();}

           if (mistake) f.submit();
        }
    </script>
    </head>
    <body>
        <form action="register_process.php" method="POST" onsubmit="val_func(this); return false;">
            name<input type="text" name="name" id="id_name"><span id="sp_name"></span><br>
            surname<input type="text" name="surname" id="id_surname"><span id="sp_surname"></span><br>
            login<input type="text" name="login" id="id_login"><span id="sp_login"></span><br>
            password<input type="text" name="password" id="id_password"><span id="sp_password"></span><br>
            confirm password<input type="password" id="id_conf_password"><span id="sp_conf_password"></span><br>
            <input type="submit" name="submit" id="submit">
        </form>
    </body>    
</html>