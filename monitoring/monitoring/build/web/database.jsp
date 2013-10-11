<%-- 
    Document   : database
    Created on : Jan 10, 2013, 1:36:54 PM
    Author     : selvaas
--%>

<html>
<head>
      <%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
 <%@ page import="java.sql.*"%>
 
	<title>MONITORING PAGE</title>
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/pages.css">
  <link rel="stylesheet" type="text/css" href="css/font.css">
  	
  
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
                        <div class="dbhome">
          <br><br><br><br><center>
         <a href="monitor.jsp">SHOW MONITOR</a><br>
         
         <a href="graphical_monitoring_server.jsp">RUN GRAPH SERVER</a><br><br>
         <br>
         <a href="filemonitor.jsp">SHOW FILE MONITOR</a><br>
      
            
         <br>
         <br>
         <a href="chart images.jsp">SHOW GRAPH MONITOR</a><br>
      
            
         <br>
         <a href="chart.jsp">PRIVATE CLOUD STORAGE MONITOR</a><br>
         <br>
         <a href="register1.jsp">REGISTER NEW ACCOUNT</a><br>
            
         <br>
         <br><a href="chart1.jsp">PUBLIC CLOUD STORAGE MONITOR</a><br>
         <br>
         <a href="logout.jsp">LOGOUT</a><br>
    
                        </div></div></div>
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>

