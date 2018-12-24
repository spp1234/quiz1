<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="images/s.jpg">
          <form action="Addprocess.jsp" method="post">
              <center>
        <h1>Add Questions</h1>

      <table border="5">
          <tr>
              <td>Select Question Number</td>
              <td>
                  <select name="b1" required>
                      <option disabled="" selected="">Select Question Number</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                <option>16</option>
                <option>17</option>
                <option>18</option>
                <option>19</option>
                <option>20</option>
                        </select>
              </td>
          </tr>
          <tr>
              <td>Write Your Question</td>
              <td>
                  <textarea placeholder="Write Your Question Here" required  name="t1" autocomplete="off" rows="5"></textarea>
              </td>
          </tr>
          <tr>
              <td>Enter Option 1</td>
              <td><input type="text" name="t2" value="" placeholder="Option 1" required autocomplete="off"/></td>
         </tr>
      <tr>
              <td>Enter Option 2</td>
              <td><input type="text" name="t3" value="" placeholder="Option 2" required autocomplete="off"/></td>
         </tr>
         <tr>
              <td>Enter Option 3</td>
              <td><input type="text" name="t4" value="" placeholder="Option 3" required autocomplete="off"/></td>
         </tr>
         <tr>
              <td>Enter Option 4</td>
              <td><input type="text" name="t5" value="" placeholder="Option 4" required autocomplete="off"/></td>
         </tr>
         <tr>
             <td>Enter Your Answer</td>
             <td>
      <select name="t6" required>
          <option disabled selected>Enter Your Answer</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
      </select> </td>
              
          </tr>
          <tr>
                <td><input type="reset" value="Reset" /></td>
                <td><input type="submit" name="Submit" value="ADD"/></td>
            </tr>
  </form>
  </center>  </body>
</html>
