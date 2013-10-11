<%-- 
    Document   : index
    Created on : Jan 7, 2013, 11:57:46 PM
    Author     : selvaas
--%>

<html>
<head>
      <%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
 <%@ page import="java.sql.*"%>
 
	<title> CLIENT MONITORING PAGE</title>
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">
    <link rel="stylesheet" type="text/css" herf="css/fonts.css">  	
  
    <script type="text/javascript" src="js/min1.js"></script>
    <script type="text/javascript" src="js/min.js"></script>
    
    
    <script type="text/javascript">
        
        
	$(document).ready(function() {  
		$('a.link').click(function () {  
			$('#wrapper').scrollTo($(this).attr('href'), 800);
			setPosition($(this).attr('href'), '#cloud1', '0px', '400px', '800px', '1200px')
			setPosition($(this).attr('href'), '#cloud2', '0px', '800px', '1600px', '2400px')
			$('a.link').removeClass('selected');  
			$(this).addClass('selected');
			return false;  
		});  
	});
	function setPosition(check, div, p1, p2, p3, p4) {
	if(check==='#box1')
		{
			$(div).scrollTo(p1, 800);
		}
	else if(check==='#box2')
		{
			$(div).scrollTo(p2, 800);
		}
	else if(check==='#box3')
		{
			$(div).scrollTo(p3, 800);
		}
	else
		{
			$(div).scrollTo(p4, 800);
		}
	};
	</script>
</head>

<body>
	<div id="cloud1" class="clouds">
    	<div id="clouds-small"></div>
    </div><!-- end clouds -->
    <div id="cloud2" class="clouds">
        <div id="clouds-big"></div>
    </div><!-- end clouds -->
	<div id="header">
   		<h1 id="logo"> Clouds</h1>
    	
           
     
</div><!-- end header -->
	<div id="wrapper">
    	<ul id="mask">
        	<li id="box1" class="box">
            	<a name="box1"></a>
                <div class="content"><div class="inner">
                        
                         <%@page contentType="text/html" import="java.util.*" %>


                         
     
         <% Calendar calendar = new GregorianCalendar(); 
int minute = calendar.get(Calendar.MINUTE); 
minute=(calendar.get(Calendar.HOUR)*3600)+(minute*60)+calendar.get(Calendar.SECOND);
%>

<%@page import="org.jfree.data.time.TimeSeriesCollection"%>
<%@page import="org.jfree.data.time.TimeSeries"%>
<%@page import="org.jfree.data.time.Day"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="org.jfree.chart.plot.PiePlot3D"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%@page import="org.jfree.data.time.TimeSeriesCollection"%>
<%@page import="java.util.Date"%>
<%@page import="org.jfree.data.time.TimeSeries"%>
<%@page import="org.jfree.data.time.Day"%>
<%@page import="org.jfree.chart.plot.PiePlot3D"%>
<%@page import="org.jfree.data.general.DefaultPieDataset"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="java.io.FileInputStream"%>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.*" %>
<%@ page import="org.jfree.chart.title.*" %>
<%@ page import="org.jfree.data.general.DefaultPieDataset" %>

<%@ page import="org.jfree.ui.*" %>
<%@ page import="org.jfree.chart.plot.*" %>
<%@ page import="org.jfree.util.*"%>

<%@ page import="java.awt.*"%>
<font style="color: 0ABB1C; font-size: 20px;">     
<h1>CLIENT MONITORING</h1></font>    
        <TABLE border="2">
<font style="font-family: comic;">            <TR><TD>
                    ONLINE CLIENTS
                </TD>
                <TD>
                   ACTION PERFORMED</TD>
                 
                <TD>LAST ACTION TIMING</TD>
                <TD> NAME OF FILE LAST ACCESSED</TD>
                <TD> OPERATING SYSTEM OF CLIENT</TD>
            </TR>
            </font>
                
            <% 
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

 DefaultPieDataset pieDataset = new DefaultPieDataset();
 pieDataset.setValue("selvaas", 12);
  pieDataset.setValue("sachin",  13);
   pieDataset.setValue("shewag", 13);
    pieDataset.setValue("mohit", 10);
    
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

ResultSet theResult=theStatement.executeQuery("select * from activitylist where state=1");
 while(theResult.next())         
         {
 int m= Integer .parseInt(theResult.getObject(9).toString());
 
 if((minute-m)<=1200)
  {
   %>
     <tr>
         <td>
             
             <%
              
             out.println(theResult.getObject(1).toString());
             
%>
         </td>
         <td>
             <%if(theResult.getObject(6).toString().equals("ups"))
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
             %>
         </td>
         <td>
     <%
             out.println(theResult.getObject(2).toString());
             
%>
         </td>
         <td>
             
             <%out.println(theResult.getObject(7).toString());
             
%>
         </td>
         <td>
             
             <%out.println(theResult.getObject(5).toString());
             
%>
         </td>
     </tr>
     
     <%
             }

 }
 %>
      <%     
theStatement.close();
St.close();
connection.close();
response.setHeader("Refresh","1");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
%>     





            
            
            </table>
    
                    </div></div>
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>
