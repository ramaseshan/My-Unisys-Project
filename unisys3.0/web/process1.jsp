<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
      <title>login</title>
</head>
<body>
 
<%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
    <%@page isErrorPage="true" %> 
 <%@page errorPage="error.jsp" %>

<%
Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        
String name = request.getParameter("username");
String pwd = request.getParameter("password");
 session.setAttribute("as",name);

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
   if(m.equals("c"))
   {
         int val = St.executeUpdate("update clientinfo set state=1 where username='"+name+"'");
 
 ServletContext context= getServletContext();
String q = System.getProperty("os.name");
PreparedStatement ps;
  ps = connection.prepareStatement("update activitylist set os = ? where username='"+name+"'");
  ps.setString(1, q);
  ps.executeUpdate();
  val = St.executeUpdate("update activitylist set state=1 where username='"+name+"'");

  String useragent = request.getHeader("user-agent");
  
  ps = connection.prepareStatement("update activitylist set useragent = ? where username='"+name+"'");
  ps.setString(1, useragent);
  ps.executeUpdate();
  String ipadd = request.getRemoteAddr();
  ps = connection.prepareStatement("update activitylist set ipaddress = ? where username='"+name+"'");
  ps.setString(1,ipadd);
  ps.executeUpdate();
 %>
 <jsp:forward page="allprocess.jsp"/>
 <%
   }
     else
    out.println("<h1>invalid password or userid");
     
}
else
    out.println("<h1>invalid password or userid");
theStatement.close();
St.close();
connection.close();
        %>

     
</body>
</html>