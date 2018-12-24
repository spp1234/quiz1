<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <script type="text/javascript" src="backNoWork.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 
      <style>
      #remainingTime 
      {
     top:0;
     right:0;
      }
     
     
      .hone
{
	color:#ff0000;
	font-family: 'Lora', serif;
	font-size:40px
}    
     .op
     {
     color: green;
     font-size: 21px;
     }
     #o
     {
     color: green;
     font-size: 20px;
     }
       .question-panel{

}

.question-label{
	position: relative;
	width: 60px;
	height: 30px;
	padding-top:20px;
	float: left;
	font-size: 21px;
	color: white;
	border-radius: 4px;
	margin-left:10px;
	text-align: center;
	margin-top: -65px;
    background: linear-gradient(360deg, green, green);
    box-shadow: 0 4px 20px 0px rgba(0, 5, 0, 0.14), 0 7px 10px -5px black;
}
.question{
	margin-top: 60px;
	position: relative;
	padding-top: 25px;
	width: 78%;
	min-height: 100px;
	font-size: 24px;
	background-color: white;
box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
}
.delete-btn{
        background: linear-gradient(rgba(242,46,46,0.93),rgba(224,16,16,0.99));
        width: 70px;
        padding: 5px;
        font-size: 23px;
        border-radius: 4px;
	text-align: center;
        color: whitesmoke;
        vertical-align: central;
    
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(0, 188, 212, 0.4);
}
.delete-btn:hover{
        background: linear-gradient(60deg, #F22E2E, #E01010);
    color: white;
}
.add-btn{
        background: linear-gradient( rgba(111,219,99,0.87), rgba(81,191,69,0.98));
        min-width: 70px;
        padding: 5px;
        font-size: 23px;
        border-radius: 4px;
	text-align: center;
        color: whitesmoke;
        vertical-align: central;
    
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(0, 188, 212, 0.4);
}
.add-btn:hover{
        background: #51BF45;
    color: white;
}
.answer{
	margin-top: 4px;
	position: relative;
	width: 78%;
	min-height: 60px;
	background-color: white;
box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
}
.answer input[type="radio"]:checked + label{
	background: linear-gradient(60deg, #66bb6a, #43a047);
	color: white;
}

.answer input[type="radio"] + label {
	margin-top: 10px;
	margin-left: 22px;
	border-radius: 5px;
	border:1px solid green;
	padding:5px;
	float: left;
}
.answer .show,.show-correct{
    margin-top: 10px;
	margin-left: 15px;
	border-radius: 5px;
	border:1px solid green;
	padding:5px;
	float: left;
}
.show-correct{
    background: linear-gradient(60deg, #66bb6a, #43a047);
    color: white;
}
.answer input[type="radio"] {
	display: none;
	float: left;
}
.panel{
position: relative;
padding: 20px;
margin-top: 60px;
margin-left: 10px;
border-radius: 3px;
background-color: white;
box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.14);
}

      </style>
      
    </head>
    
    <body >
    
    <span id="remainingTime" style="position: fixed;font-size: 23px;background:red;border-radius: 5px;padding: 10px;box-shadow: 2px 2px 2px 0px;"></span>
                   
 <script>
    var time = 1;
    time--;
    var sec=60;                    
    document.getElementById("remainingTime").innerHTML =  time+" : "+sec;
       //it calls fuction after specific time again and again                  
   var x= window.setInterval(timerFunction, 1000);
function timerFunction(){
        sec--;
  if (time < 0) {
    clearInterval(x);
    document.getElementById("remainingTime").innerHTML = "00 : 00";
    document.getElementById("myform").submit();
  }
  document.getElementById("remainingTime").innerHTML =  time+" : "+sec;
if(sec==0)
{
    sec=60;
    time--;    
}
}
</script>
        <form id="myform" action="resultcsharp.jsp"  method="post">
        
            <center><h1 class ="hone">Online Quiz</h1></center>
           
<%!
Connection con;
Statement st;
ResultSet rs;    
int i =0;
%>    
        <%
     try
     {
     Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system", "1415513779");
    st=con.createStatement();
    rs=st.executeQuery("select * from cstest order by question_no");
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
        i++;
    %>
                        <div class="question-panel">
						<div class="question" >
						<label class="question-label"><%=i%></label>
           <b><%="  "+s2%></b>
           </div>
           <ol class ="op" type='A'>
           <li><input type='radio' name="java<%=i%>" value='1' /><%=s3%><br><br></li>
           <li><input type='radio' name="java<%=i%>" value='2' /><%=s4%><br><br></li>
           <li><input type='radio' name="java<%=i%>" value='3'  /><%=s5%><br><br></li>
           <li><input type='radio' name="java<%=i%>" value='4'  /><%=s6%><br><br></li>
           </ol>
           <hr/>
                     
           </div>
			
    <%
        
    }
     
      }
          catch(Exception e)
       {
           
       }
        i=0;
    %>
    
     <center><input type="submit" value="Submit" onclick="return ValidateForm(this.form)"></center>
</form>
<script>
timer();
</script>
    </body>
</html>
