<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
        <link rel="stylesheet" href="style.css">
        
        <script type="text/javascript" src="backNoWork.js"></script>
<style>

body
        {
         background-image:url("https://www.colourbox.de/preview/2897822-grunge-vector-floral-background-mit-ornament-und-orangenblute.jpg");
         background-size:cover;
        }
                a {
    display: relative;
    color: #666;
    text-align: center;
    padding: 14px 16px;
    
}

a:hover {
    background-color: #FFB6C1;
}
                </style>
    </head>
    <body background="images/logout.png">
        <%
response.setHeader("Pragma","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Expires","0"); 
response.setDateHeader("Expires",-1); 
session.invalidate();
        %>
    <center><h1><font color="green">You are Successfully logged out...</font></h1></center><br>

<center><button  class="button button1 " onclick="document.location.href='index.html'"><b>HOME</b></button></center>
    </body>
</html>

   