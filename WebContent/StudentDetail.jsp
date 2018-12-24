<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
    <style>
    
    .productTable {
	padding-top:25px;
	border-spacing: 0px;
}

.productTable thead tr th{
	padding: 15px;
	color: white;
	background-color: #374561;
	font-size:15px;
}

.productTable tbody tr td {
	padding: 13px;
	font-size: 13px
}

.productTable tr:nth-child(even) {
	background-color: #e4e4e4;
}

.productTable tr:nth-child(odd) {
	background-color: white;
}
    
    
    </style>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Management</title>
         
<style> 
body
            {
                margin: 0;
            }
    
    .honee
{
	color:red;
	font-family: 'Lora', serif;
	font-size:30px
}   
   .hone
{
	color:yellow;
	font-family: 'Lora', serif;
	font-size:26px
} 
.fontmini
{
	color:red;
	font-family: 'Lora', serif;
	font-size:40px
}
body
        {
         background-image:url("https://www.colourbox.de/preview/2897822-grunge-vector-floral-background-mit-ornament-und-orangenblute.jpg");
         background-size:cover;
        }
</style>

    </head>
    <h1 align="center" class ="fontmini">Results</h1>
<%
     try
     {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "1415513779");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select Name,sid,marks,subject,tdate from Quiz_Table");
    %>
    <center>
    <table align="center" class="productTable">
    <tr>
        <th>Student </th>
        <th> ID</th>
        <th>Marks</th>
        <th>Quiz</th>
        <th>Quiz Date</th>
  
  </tr>
    <%
    while(rs.next())
     {
        String s1=rs.getString("Name");
        int s2=rs.getInt("sid");
        int s3=rs.getInt("marks");
        String s4=rs.getString("subject");
        String s5=rs.getString("tdate");
    %>
    
    <tr >
    <td ><%=s1%></td>
    <td><%=s2%></td>
    <td><%=s3%></td>
    <td><%=s4%></td>
    <td><%=s5%></td>
    </tr>  
    <%
    }  
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
  </table>
  <br>
    </center>
</body>
</html>