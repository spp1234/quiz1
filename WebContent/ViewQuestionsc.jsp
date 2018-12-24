<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <body>
        <table border="2">
    <tr>
    <th>Question_No</th></th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
<%!
Connection con;
Statement st;
ResultSet rs;       
%>    
        <%
     try
     {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "1415513779");
    st=con.createStatement();
    rs=st.executeQuery("select * from ctest order by question_no");
%>     
    
    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        String s2=rs.getString("question");
        String s3=rs.getString("option1");
        String s4=rs.getString("option2");
        String s5=rs.getString("option3");
        String s6=rs.getString("option4");
        String s7=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
       
%>
    </body>
</html>
