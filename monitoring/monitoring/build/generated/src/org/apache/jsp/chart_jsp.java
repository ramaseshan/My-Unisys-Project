package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.chart.ChartFactory;
import java.io.FileInputStream;
import java.io.*;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartUtilities;
import java.io.*;
import java.util.*;
import java.io.*;
import java.sql.*;

public final class chart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 public long getFileSize(File folder) {
         
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
      }
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>STORAGE MONITORING</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write(" ");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write(" \n");
      out.write("  \n");


Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        

   String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
       
      
      long si=getFileSize(new File(prop.getProperty("adminpath")));
      si=si/1024;
      long full=2048000;
      int n=(int)((si*100)/full);
      
 try
 {
 File image = File.createTempFile("image", "tmp");
DefaultPieDataset pieDataset = new DefaultPieDataset(); 
pieDataset.setValue("free space", new Integer(100-n)); 
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


      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
