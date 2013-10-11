<%-- 
    Document   : chart
    Created on : Jan 24, 2013, 9:30:48 AM
    Author     : Admin
--%>


       <%-- 
    Document   : chart
    Created on : Jan 24, 2013, 9:30:48 AM
    Author     : Admin
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STORAGE MONITORING</title>
    </head>
    <body>
        
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="java.io.FileInputStream"%>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
 <%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
<%
String name=request.getParameter("name");
Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        

   String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
 ResultSet theResult=theStatement.executeQuery("select * from activitylist where username='"+name+"'");
  String s=null;
int n=0;
  while(theResult.next()){
      n=theResult.getInt(10);
  }
   

 try
 {
 File image = File.createTempFile("image", "tmp");
DefaultPieDataset pieDataset = new DefaultPieDataset(); 
pieDataset.setValue("free space", new Integer(8- n)); 
pieDataset.setValue("used space", new Integer(n)); 
 

JFreeChart chart = ChartFactory.createPieChart("NUMBER OF FILES ", pieDataset, true,true, true);
 // Assume that we have the chart
 ChartUtilities.saveChartAsPNG(image, chart, 800, 500);

 FileInputStream fileInStream = new FileInputStream(image);
 OutputStream outStream = response.getOutputStream();   

 long fileLength;
 byte[] byteStream;

 fileLength = image.length();
 byteStream = new byte[(int)fileLength];
 fileInStream.read(byteStream, 0, (int)fileLength);

 response.setContentType("image/png");
 response.setContentLength((int)fileLength);
 

 fileInStream.close();
 outStream.write(byteStream);
 outStream.flush();
 outStream.close();

 }
 catch (IOException e)
 {
 System.err.println("Problem occurred creating chart.");
 }

%>
    </body>
</html>

    </body>
</html>
