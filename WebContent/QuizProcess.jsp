<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           try
           {
           String tdate = (new java.util.Date()).toLocaleString();
           String name=request.getParameter("name");
           int id=Integer.parseInt(request.getParameter("sid"));
           String password=request.getParameter("pass");
           session.setAttribute("name",name);
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1415513779");
           PreparedStatement ps=con.prepareStatement("insert into Quiz_Table values(?,?,?,?,?,?)");
           ps.setString(1, name);
           ps.setInt(2, id);
           ps.setString(3, password);
           ps.setInt(4, 0);
           ps.setString(5, "");
           ps.setString(6, tdate);
           int i=ps.executeUpdate();
           
           if(i<0)
           {
               out.println("OOps Something went wrong!!!");
           }
           else
           {
               response.sendRedirect("userHome.jsp");
           }
           session.setAttribute("Name", name);
           session.setAttribute("Sid", id);
        }
        catch(Exception e)
        {
            out.println(e);  
        }
       
       %>
    </body>
</html>
