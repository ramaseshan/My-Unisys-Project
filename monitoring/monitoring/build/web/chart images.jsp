<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<HTML>
 <table border="1">
 <tr><th>USAGE</th><th>CHART</th></tr>
   <%
  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
    Statement stmt=con.createStatement();
    
       %>
      <tr>
          <td>
              
              <table border="1">
                  <tr><th>TEXT CONVERSION</th>
                      <th>RTF CONVERSION</th>
                      <th>HTML CONVERSION</th>
                  </tr>
                  <tr>
                      <td>
                          213
                      </td>
                      <td>
                          23
                      </td>
                      <td>
                          23
                      </td>
                  </tr>
              </table>    
          
          
          
          
          
      </td>
      <td>
          <img src="images/chart/bar.png" width="400" height="200">
</a></td>
      </tr>
      <tr>
          <td>
              
          </td>
          <td>
             <img src="images/chart/partnership.png" width="400" height="200"> 
          </td>
      </tr>
       <tr>
          <td>
              
          </td>
          <td>
             <img src="images/chart/pie.png" width="400" height="200"> 
          </td>
      </tr>
      <%
   
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  response.setHeader("Refresh","1");
response.setHeader("Cache-Control", "no-cache");
  %>
 </table>
</HTML>