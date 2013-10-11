<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script>
function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
    </script><title>login</title>
</head>
<body>
 
<%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 

<%
String name = request.getParameter("username");
String pwd = request.getParameter("password");
 session.setAttribute("as",name);
  Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        
        


        String connectionURL=prop.getProperty("connurl");
         
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();

 String as;

  ResultSet theResult=theStatement.executeQuery("select * from clientinfo where username='"+name+"' and  password=  MD5('"+pwd+"')");
if(theResult.next()){
   String u=theResult.getObject(5).toString();
    
 String k=theResult.getObject(8).toString();
 String  m=theResult.getString("ugroup");
  
    if(m.equals("a"))
           { 
        int val3 = St.executeUpdate("update clientinfo set state=2 where username='"+name+"'");
       int val2 = St.executeUpdate("update activitylist set state=2 where username='"+name+"'"); %>
           <jsp:forward page="admin.jsp"/>
              
  <%    
} 
     
}
else
    out.println("<h1>invalid password or userid");
theStatement.close();
St.close();
connection.close();
        %>
      
        <a href="javascript:go()"><b>Logout</b></a> 
       
     
</body>
</html>