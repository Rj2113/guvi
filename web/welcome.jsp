<%-- 
    Document   : welcome
    Created on : Aug 28, 2022, 8:48:29 PM
    Author     : Rajarajan
--%>
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
        <h1>
 Welcome, <%= user.getName() %></h1>
<h3>
Your Account ID: <%= user.getId() %> </h3>
<h3>
Your Mobile: <%= user.getMobile() %></h3>
<h3>
Your Email: <%= user.getEmail() %> </h3>

<button><a href="LogoutServlet">Log Out</a></button>
    </div></div>    </body>
</html>
