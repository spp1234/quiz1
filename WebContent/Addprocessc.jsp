<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <body style="background-color: lightpink">
<%!
Connection con;
Statement st;
%>       
<%
try
{
int s1=Integer.parseInt(request.getParameter("b1"));
String s3=request.getParameter("t1");
String s4=request.getParameter("t2");
String s5=request.getParameter("t3");
String s6=request.getParameter("t4");
String s7=request.getParameter("t5");
int s8=Integer.parseInt(request.getParameter("t6"));
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1415513779");
st=con.createStatement();
int i=st.executeUpdate("insert into ctest values("+s1+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
if(i<0)
{
    out.println("OOps Something went wrong!!!");
}
else
{
    out.println("<h1>Question inserted Successfully..</h1>");
    out.println("<a href='ViewQuestionsc.jsp'>View Questions List</a>");
    //response.sendRedirect("ViewQuestionsc.jsp");
 }
}
catch(Exception e)
{
    out.println(e);
}

%>
    </body>
</html>
