<%@page import="java.sql.PreparedStatement"%>
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
    <body>
        <%!
            Connection con;
            Statement st;
            ResultSet rs;
            PreparedStatement ps;
        %>
        <%
            try
            {
                String name=request.getParameter("name");
                String pass=request.getParameter("pass");
                //out.println(name);
                ///out.println(pass);
                Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "1415513779");
                ps = con.prepareStatement("select * from Admin_Table where Name=? and  Pass=?"); 
            ps.setString(1, name);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            if (rs.next()) 
            {                
                response.sendRedirect("AdminHome.jsp");
            }
            else
            {
                out.println("<h1>Invalid login credentials</h1>");
            }
            }
            catch(Exception e)
            {
                out.println(e);
            }
        
        %>
    </body>
</html>
