<%@page import="newpackage.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% user user = (user) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <div class="container">
        <div class="box">
            <form action="update" method="post">
                  <p>
Id</p>
            <input type="text" placeholder="<%=user.getId()%>" name="id" required>
                   <p>
            <p>
Name</p>
            <input type="text" placeholder="<%=user.getName()%>" name="name" required>
                   <p>

Mobile</p>
<input type="int" placeholder="<%=user.getMobile()%>" name="mobile" required >
 
<p>



    Email</p>
<input type="text" placeholder="<%=user.getEmail()%>" name="email" required>
                   <p>
Password</p>
<input type="password" placeholder="<%=user.getPassword()%>" name="password" required>
 <input type="submit" value="UPDATE">

</div></div> </form>   </body>
</html>

