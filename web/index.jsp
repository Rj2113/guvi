<%-- 
    Document   : index
    Created on : Aug 28, 2022, 1:52:14 PM
    Author     : Rajarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Join Us</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/img.svg">
                <h1>
Login Account</h1>
<form action="LoginServlet" method="post">
    
    
     
                    <p>
                        
Email</p>
<input type="text" placeholder="Username" name="email" required>
                    <p>
Password</p>
<input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <a href="#">Forget Password?</a><br><br>
                    <a href="registration.jsp">Create New Account</a>
                </form>
</div>
</div>
</body>
</html>