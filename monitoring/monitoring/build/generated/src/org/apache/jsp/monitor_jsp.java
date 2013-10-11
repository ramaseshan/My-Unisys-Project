package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import javax.servlet.*;
import java.text.*;
import java.sql.*;
import java.util.*;
import org.jfree.data.time.TimeSeriesCollection;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.Day;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartFactory;
import org.jfree.data.general.DefaultPieDataset;
import java.io.*;
import java.sql.*;
import org.jfree.data.time.TimeSeriesCollection;
import java.util.Date;
import org.jfree.data.time.TimeSeries;
import org.jfree.data.time.Day;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.chart.ChartFactory;
import java.io.FileInputStream;
import java.io.*;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.*;
import org.jfree.chart.title.*;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.ui.*;
import org.jfree.chart.plot.*;
import org.jfree.util.*;
import java.awt.*;

public final class monitor_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("      \n");
      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("\t<title> CLIENT MONITORING PAGE</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/design.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/pages.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" herf=\"css/fonts.css\">  \t\n");
      out.write("  \n");
      out.write("    <script type=\"text/javascript\" src=\"js/min1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/min.js\"></script>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\t$(document).ready(function() {  \n");
      out.write("\t\t$('a.link').click(function () {  \n");
      out.write("\t\t\t$('#wrapper').scrollTo($(this).attr('href'), 800);\n");
      out.write("\t\t\tsetPosition($(this).attr('href'), '#cloud1', '0px', '400px', '800px', '1200px')\n");
      out.write("\t\t\tsetPosition($(this).attr('href'), '#cloud2', '0px', '800px', '1600px', '2400px')\n");
      out.write("\t\t\t$('a.link').removeClass('selected');  \n");
      out.write("\t\t\t$(this).addClass('selected');\n");
      out.write("\t\t\treturn false;  \n");
      out.write("\t\t});  \n");
      out.write("\t});\n");
      out.write("\tfunction setPosition(check, div, p1, p2, p3, p4) {\n");
      out.write("\tif(check==='#box1')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p1, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse if(check==='#box2')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p2, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse if(check==='#box3')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p3, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p4, 800);\n");
      out.write("\t\t}\n");
      out.write("\t};\n");
      out.write("\t</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div id=\"cloud1\" class=\"clouds\">\n");
      out.write("    \t<div id=\"clouds-small\"></div>\n");
      out.write("    </div><!-- end clouds -->\n");
      out.write("    <div id=\"cloud2\" class=\"clouds\">\n");
      out.write("        <div id=\"clouds-big\"></div>\n");
      out.write("    </div><!-- end clouds -->\n");
      out.write("\t<div id=\"header\">\n");
      out.write("   \t\t<h1 id=\"logo\"> Clouds</h1>\n");
      out.write("    \t\n");
      out.write("           \n");
      out.write("     \n");
      out.write("</div><!-- end header -->\n");
      out.write("\t<div id=\"wrapper\">\n");
      out.write("    \t<ul id=\"mask\">\n");
      out.write("        \t<li id=\"box1\" class=\"box\">\n");
      out.write("            \t<a name=\"box1\"></a>\n");
      out.write("                <div class=\"content\"><div class=\"inner\">\n");
      out.write("                        \n");
      out.write("                         \n");
      out.write("\n");
      out.write("\n");
      out.write("                         \n");
      out.write("     \n");
      out.write("         ");
 Calendar calendar = new GregorianCalendar(); 
int minute = calendar.get(Calendar.MINUTE); 
minute=(calendar.get(Calendar.HOUR)*3600)+(minute*60)+calendar.get(Calendar.SECOND);

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<font style=\"color: 0ABB1C; font-size: 20px;\">     \n");
      out.write("<h1>CLIENT MONITORING</h1></font>    \n");
      out.write("        <TABLE border=\"2\">\n");
      out.write("<font style=\"font-family: comic;\">            <TR><TD>\n");
      out.write("                    ONLINE CLIENTS\n");
      out.write("                </TD>\n");
      out.write("                <TD>\n");
      out.write("                   ACTION PERFORMED</TD>\n");
      out.write("                 \n");
      out.write("                <TD>LAST ACTION TIMING</TD>\n");
      out.write("                <TD> NAME OF FILE LAST ACCESSED</TD>\n");
      out.write("                <TD> OPERATING SYSTEM OF CLIENT</TD>\n");
      out.write("            </TR>\n");
      out.write("            </font>\n");
      out.write("                \n");
      out.write("            ");
 
          Properties prop = new Properties();
prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
          


        String connectionURL=prop.getProperty("connurl");
       
        String d,state,ud,name;
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
 String as;
 as=(String)session.getAttribute("as");

 PreparedStatement psmnt = null;
FileInputStream fis;
File image = File.createTempFile("image",".png");
ResultSet theResult=theStatement.executeQuery("select * from sample");
while(theResult.next()){
 DefaultPieDataset pieDataset = new DefaultPieDataset();
 pieDataset.setValue("selvaas", 12);
  pieDataset.setValue("sachin",  13);
   pieDataset.setValue("shewag", 13);
    pieDataset.setValue("mohit", 10);
      out.println(theResult.getObject(2));
  JFreeChart chart = ChartFactory.createPieChart3D("monitoring the rocks", pieDataset, true,true,true);
  PiePlot3D p=(PiePlot3D)chart.getPlot();
  p.setForegroundAlpha(0.5f);
ChartUtilities.saveChartAsPNG(image, chart, 300,400);


//many charts


  
psmnt = connection.prepareStatement("update image set name=?,state=?,image=? where state=0");
psmnt.setString(1,"piechart");
psmnt.setInt(2, 0);
fis = new FileInputStream(image);
psmnt.setBinaryStream(3, (InputStream)fis, (int)(image.length()));
int s = psmnt.executeUpdate();
if(s>0) {
out.println("inserted successfully !");
}
else {
out.println("unsucessfull to insert image.");
}
}

TimeSeries series = new TimeSeries( "", Day.class );

		series.add(new Day(new Date("2009/01/01")), 123);
		series.add(new Day(new Date("2009/01/02")), 133);
		series.add(new Day(new Date("2009/01/03")), 99);
		series.add(new Day(new Date("2009/01/04")), 113);
		series.add(new Day(new Date("2009/01/05")), 159);
		series.add(new Day(new Date("2009/01/06")), 124);
		series.add(new Day(new Date("2009/01/07")), 120);

        TimeSeriesCollection dataset=new TimeSeriesCollection();
        dataset.addSeries(series);
        File image1 = File.createTempFile("image",".png");
        

        JFreeChart chart1 = ChartFactory.createTimeSeriesChart
        ("User Participation Chart", 	// Title
         "Day",              		// X-Axis label
         "Number Of Users",             // Y-Axis label
         dataset,         		// Dataset
         true,                     	// Show legend
         true,				//tooltips
         false				//url
        ); 
        ChartUtilities.saveChartAsPNG(image1, chart1, 300,400);
psmnt = connection.prepareStatement("update image set name=?,bar=? where state=0");
psmnt.setString(1,"b1");

fis = new FileInputStream(image1);
psmnt.setBinaryStream(3, (InputStream)fis, (int)(image1.length()));
int s1 = psmnt.executeUpdate();
psmnt.close();

theResult=theStatement.executeQuery("select * from activitylist where state=1");
 while(theResult.next())         
         {
 int m= Integer .parseInt(theResult.getObject(9).toString());
 
 if((minute-m)<=1200)
  {
   
      out.write("\n");
      out.write("     <tr>\n");
      out.write("         <td>\n");
      out.write("             \n");
      out.write("             ");

              
             out.println(theResult.getObject(1).toString());
             

      out.write("\n");
      out.write("         </td>\n");
      out.write("         <td>\n");
      out.write("             ");
if(theResult.getObject(6).toString().equals("ups"))
                                         {
                 out.println("upload started");
             }
             else if(theResult.getObject(6).toString().equals("upe"))
                                 {
                 out.println("uploaded ended");
                                 }
            else if(theResult.getObject(6).toString().equals("dow"))
                                 {
                 out.println("downloaded file");
                                 }
             else if(theResult.getObject(6).toString().equals("del"))
                                 {
                 out.println("deleted file");
                                 }
             else if(theResult.getObject(6).toString().equals("view"))
                                 {
                 out.println("viewing files");
                                 }
             else if(theResult.getObject(6).toString().equals("home"))
                                 {
                 out.println("HOME SCREEN");
                                 }
             else 
                                 {
                 out.println("no action");
                                 }
             
      out.write("\n");
      out.write("         </td>\n");
      out.write("         <td>\n");
      out.write("     ");

             out.println(theResult.getObject(2).toString());
             

      out.write("\n");
      out.write("         </td>\n");
      out.write("         <td>\n");
      out.write("             \n");
      out.write("             ");
out.println(theResult.getObject(7).toString());
             

      out.write("\n");
      out.write("         </td>\n");
      out.write("         <td>\n");
      out.write("             \n");
      out.write("             ");
out.println(theResult.getObject(5).toString());
             

      out.write("\n");
      out.write("         </td>\n");
      out.write("     </tr>\n");
      out.write("     \n");
      out.write("     ");

             }

 }
 
      out.write("\n");
      out.write("      ");
     
theStatement.close();
St.close();
connection.close();
response.setHeader("Refresh","1");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1

      out.write("     \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            </table>\n");
      out.write("    \n");
      out.write("                    </div></div>\n");
      out.write("            </li><!-- end box1 -->\n");
      out.write("           \n");
      out.write("        </ul><!-- end mask -->\n");
      out.write("    </div><!-- end wrapper -->\n");
      out.write("</body>\n");
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
