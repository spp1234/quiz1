<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="backNoWork.js"></script>

<style>
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

<div align="center">



<h1 class ="hone">Welcome To Admin Page</h1>


<br></br>
<button  class="button button1 " onclick="document.location.href='StudentDetail.jsp'"><b>Student Details</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='AdminAddq.jsp'" ><b>Add  Questions</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='AdminViewq.jsp'"><b>View Questions</b></button>
<br></br>
<button class="button button1 " onclick="document.location.href='logout.jsp'"><b>Logout</b></button>
<br></br>
</div>

</body>
</html>

