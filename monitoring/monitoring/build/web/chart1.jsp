
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>STORAGE MONITORING</title>
    </head>
    <body>
        
 <%! public long getFileSize(File folder) {
         
            System.out.println("Folder: " + folder.getName());
        long foldersize = 0;
    
        File[] filelist = folder.listFiles();
        for (int i = 0; i < filelist.length; i++) {
          if (filelist[i].isDirectory()) {
            foldersize += getFileSize(filelist[i]);
          } else {
            
            foldersize += filelist[i].length();
          }
        }
            return foldersize;
      }%>
 

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

Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        

   String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
       
      
      long si=getFileSize(new File(prop.getProperty("client")));
      si=si/1024;
      long full=102400;
      int n=(int)((si*100)/full);
      
 try
 {
 File image = File.createTempFile("image", "tmp");
DefaultPieDataset pieDataset = new DefaultPieDataset(); 
pieDataset.setValue("free space percentage", new Integer(100-n)); 
pieDataset.setValue("used space percentage", new Integer(n)); 
 

JFreeChart chart = ChartFactory.createPieChart("PUBLIC CLOUD STORAGE SPECIFICATION ", pieDataset, true,true, true);
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
