<%-- 
    Document   : registration
    Created on : Aug 28, 2022, 1:52:32 PM
    Author     : Rajarajan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Account</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="regbox box">
                <img class="avatar" src="img/avataaars.svg">
                <h1>
Register Account</h1>
<form action="RegisterServlet" method="post">
                   <p>
Name</p>
<input type="text" placeholder="Username" name="name" required>
                   <p>

Mobile</p>
<input type="int" placeholder="mobile" name="mobile" required>
 
<p>



    Email</p>
<input type="text" placeholder="Useremail" name="email" required>
                   <p>
Password</p>
<input type="password" placeholder="Password" name="password" required>
                   <input type="submit" value="Register">
                   <a href="index.jsp">Already have Account?</a>
                </form>
</div>
</div>
</body>
</html>

