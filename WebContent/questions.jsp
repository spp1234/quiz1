<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="backNoWork.js"></script>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script LANGUAGE="JavaScript">
function ValidateForm(form)
{
ErrorText= "";
if ( ( form.java1[0].checked == false ) && ( form.java1[1].checked == false )&& ( form.java1[2].checked == false )&& ( form.java1[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java2[0].checked == false ) && ( form.java2[1].checked == false )&& ( form.java[2].checked == false )&& ( form.java2[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java3[0].checked == false ) && ( form.java3[1].checked == false )&& ( form.java3[2].checked == false )&& ( form.java3[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java4[0].checked == false ) && ( form.java4[1].checked == false )&& ( form.java4[2].checked == false )&& ( form.java4[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java5[0].checked == false ) && ( form.java5[1].checked == false )&& ( form.java5[2].checked == false )&& ( form.java5[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java6[0].checked == false ) && ( form.java6[1].checked == false )&& ( form.java6[2].checked == false )&& ( form.java6[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java7[0].checked == false ) && ( form.java7[1].checked == false )&& ( form.java7[2].checked == false )&& ( form.java7[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java8[0].checked == false ) && ( form.java8[1].checked == false )&& ( form.java8[2].checked == false )&& ( form.java8[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.java9[0].checked == false ) && ( form.java9[1].checked == false )&& ( form.java9[2].checked == false )&& ( form.java9[3].checked == false )) 
{
alert ( "<h1>All questions are Mandatory!!</h1>" ); 
return false;
}
else if ( ( form.java10[0].checked == false ) && ( form.java10[1].checked == false )&& ( form.java10[2].checked == false )&& ( form.java10[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
if (ErrorText=="") 
{ form.submit() }
}
</script>
    </head>
    <body>
       <form action="result.jsp" name="form" method="post">
            <center><h3>Online Quiz</h3></center>
            <%
      String  sname=(String)session.getAttribute("Name");
       int sid = (Integer)session.getAttribute("Sid");
            %><b>Student Name:<%=sname%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <b>Student ID:<%=sid%></b>
            <hr>
    <% 
         try
         { 
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","1415513779");
            Statement st = con.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '1'");  
            while(rs.next())
                   {
           out.println("Q.1)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='java1' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='java1' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='java1' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='java1' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
          out.print("</ol>");
         out.print("<hr/>");
         rs = st.executeQuery("select question,option1,option2,option3,option4 from javatest where question_no = '2'"); 
          while(rs.next()){
           out.println("Q.2)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='java2' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='java2' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='java2' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='java2' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
         out.print("</ol>");
         out.print("<hr/>");
         
         rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '3'");  
         while(rs.next())
                {
        out.println("Q.3)<b>"+rs.getString(1)+"</b>");
        out.println("<ol type='A'>");
        out.println("<li><input type='radio' name='java3' value='r1' />"+rs.getString(2)+"<br><br></li>");
        out.println("<li><input type='radio' name='java3' value='r2' />"+rs.getString(3)+"<br><br></li>");
        out.println("<li><input type='radio' name='java3' value='r3'  />"+rs.getString(4)+"<br><br></li>");
        out.println("<li><input type='radio' name='java3' value='r4'  />"+rs.getString(5)+"<br><br></li>");
        
                 } 
       out.print("</ol>");
      out.print("<hr/>");
      
      rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '4'");  
      while(rs.next())
             {
     out.println("Q.4)<b>"+rs.getString(1)+"</b>");
     out.println("<ol type='A'>");
     out.println("<li><input type='radio' name='java4' value='r1' />"+rs.getString(2)+"<br><br></li>");
     out.println("<li><input type='radio' name='java4' value='r2' />"+rs.getString(3)+"<br><br></li>");
     out.println("<li><input type='radio' name='java4' value='r3'  />"+rs.getString(4)+"<br><br></li>");
     out.println("<li><input type='radio' name='java4' value='r4'  />"+rs.getString(5)+"<br><br></li>");
     
              } 
    out.print("</ol>");
   out.print("<hr/>");
   
   rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '5'");  
   while(rs.next())
          {
  out.println("Q.5)<b>"+rs.getString(1)+"</b>");
  out.println("<ol type='A'>");
  out.println("<li><input type='radio' name='java5' value='r1' />"+rs.getString(2)+"<br><br></li>");
  out.println("<li><input type='radio' name='java5' value='r2' />"+rs.getString(3)+"<br><br></li>");
  out.println("<li><input type='radio' name='java5' value='r3'  />"+rs.getString(4)+"<br><br></li>");
  out.println("<li><input type='radio' name='java5' value='r4'  />"+rs.getString(5)+"<br><br></li>");
  
           } 
 out.print("</ol>");
out.print("<hr/>");

rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '6'");  
while(rs.next())
       {
out.println("Q.6)<b>"+rs.getString(1)+"</b>");
out.println("<ol type='A'>");
out.println("<li><input type='radio' name='java6' value='r1' />"+rs.getString(2)+"<br><br></li>");
out.println("<li><input type='radio' name='java6' value='r2' />"+rs.getString(3)+"<br><br></li>");
out.println("<li><input type='radio' name='java6' value='r3'  />"+rs.getString(4)+"<br><br></li>");
out.println("<li><input type='radio' name='java6' value='r4'  />"+rs.getString(5)+"<br><br></li>");

        } 
out.print("</ol>");
out.print("<hr/>");

rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '7'");  
while(rs.next())
       {
out.println("Q.7)<b>"+rs.getString(1)+"</b>");
out.println("<ol type='A'>");
out.println("<li><input type='radio' name='java7' value='r1' />"+rs.getString(2)+"<br><br></li>");
out.println("<li><input type='radio' name='java7' value='r2' />"+rs.getString(3)+"<br><br></li>");
out.println("<li><input type='radio' name='java7' value='r3'  />"+rs.getString(4)+"<br><br></li>");
out.println("<li><input type='radio' name='java7' value='r4'  />"+rs.getString(5)+"<br><br></li>");

        } 
out.print("</ol>");
out.print("<hr/>");

rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '8'");  
while(rs.next())
       {
out.println("Q.8)<b>"+rs.getString(1)+"</b>");
out.println("<ol type='A'>");
out.println("<li><input type='radio' name='java8' value='r1' />"+rs.getString(2)+"<br><br></li>");
out.println("<li><input type='radio' name='java8' value='r2' />"+rs.getString(3)+"<br><br></li>");
out.println("<li><input type='radio' name='java8' value='r3'  />"+rs.getString(4)+"<br><br></li>");
out.println("<li><input type='radio' name='java8' value='r4'  />"+rs.getString(5)+"<br><br></li>");

        } 
out.print("</ol>");
out.print("<hr/>");

rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '9'");  
while(rs.next())
       {
out.println("Q.9)<b>"+rs.getString(1)+"</b>");
out.println("<ol type='A'>");
out.println("<li><input type='radio' name='java9' value='r1' />"+rs.getString(2)+"<br><br></li>");
out.println("<li><input type='radio' name='java9' value='r2' />"+rs.getString(3)+"<br><br></li>");
out.println("<li><input type='radio' name='java9' value='r3'  />"+rs.getString(4)+"<br><br></li>");
out.println("<li><input type='radio' name='java9' value='r4'  />"+rs.getString(5)+"<br><br></li>");

        } 
out.print("</ol>");
out.print("<hr/>");

rs = st.executeQuery("select question,option1,option2,option3,option4 from JAVATEST where question_no = '10'");  
while(rs.next())
       {
out.println("Q.10)<b>"+rs.getString(1)+"</b>");
out.println("<ol type='A'>");
out.println("<li><input type='radio' name='java10' value='r1' />"+rs.getString(2)+"<br><br></li>");
out.println("<li><input type='radio' name='java10' value='r2' />"+rs.getString(3)+"<br><br></li>");
out.println("<li><input type='radio' name='java10' value='r3'  />"+rs.getString(4)+"<br><br></li>");
out.println("<li><input type='radio' name='java10' value='r4'  />"+rs.getString(5)+"<br><br></li>");

        } 
out.print("</ol>");
out.print("<hr/>");




         }
         catch(Exception e)
         {
             out.print(e);
         } 
    
         %>
         <center><input type="submit" value="Submit" onclick="return ValidateForm(this.form)"></center>
    </form>  
    </body>
</html>
