<?php
session_start();
$con=mysqli_connect('localhost','user1','raja123');
mysqli_select_db($con,'user1');
$email1="l.rajarajan002@gmail.com";
$s="select * from usertable where email='$email1'";
$r=mysqli_query($con,$s);
$n=$num=mysqli_num_rows($r);
$result=mysqli_fetch_assoc($r);
echo"<h1> Welcome,</h1>",$result['name'];
echo"<h2>mobile:</h2>",$result['mobile'];
echo"<h2>Username:</h2>",$result['email'];
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
<button onclick="myFunction()">Logout</button>  
<script>
function myFunction(){
  localStorage.clear();
  window.location.href='login.html';
}
</script>

  </body>
</html>