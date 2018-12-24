<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="backNoWork.js"></script>
<style>
.r
{
	color:black;
	font-family: 'Lora', serif;
	font-size:52px
} 
.t
{
	color:black;
	font-family: 'Lora', serif;
	font-size:35px
}    
.c
{
	color:green;
	font-family: 'Lora', serif;
	font-size:35px
}    
.w
{
	color:red;
	font-family: 'Lora', serif;
	font-size:35px
}        
body
        {
         background-image:url("https://www.colourbox.de/preview/2897822-grunge-vector-floral-background-mit-ornament-und-orangenblute.jpg");
         background-size:cover;
        }
#tr
{
    background-color: #ff3333;
    color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >
<nav class="navbar">
		<div class="navbar-nav">
	    <a href="logout.jsp" style="top:0;right:0">Logout</a>												
		</div>
	</nav>
<%
int t=0,w=0,l=0;
Integer i = (Integer) session.getAttribute("i");
Connection con;
Statement st;
ResultSet rs;
try
{
	int x=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "1415513779");
st=con.createStatement();
rs=st.executeQuery("select * from javatest order by question_no");
while(rs.next())
{   
	x++;
    String s7=rs.getString("Answer");
    String s8=request.getParameter("java"+(x));
    
    
    if(s7.equals(s8))
    {
    	t++;
    }
    else
    {
    	w++;
    }
    l++;
}
 
  }
      catch(Exception e)
   {
       
   }

    
%>
<center>
<h1 class="r"><u>RESULT</u></h1>
<br></br>
<ul>
<li class="t">Total No Of Questions  <%=l%></li>
<li class="c">No Of Correct Answers  <%=t%></li>

<%
    String name = (String)session.getAttribute("name");
	LoginDAO.updateMarks(name,t);
	LoginDAO.updateSubject(name,"JAVA");
%>

</ul>
</center>


<%@page import="dao.LoginDAO"%>

