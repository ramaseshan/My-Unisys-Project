<%-- 
    Document   : index
    Created on : Jan 7, 2013, 11:57:46 PM
    Author     : selvaas
--%>

<html>
<head>
	<title>ADMINISTRATOR PANEL</title>
   	  <link rel="stylesheet" type="text/css" href="css/button.css">
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
  
    <script type="text/javascript" src="js/min1.js"></script>
    <script type="text/javascript" src="js/min.js"></script>
    
     <script>
function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>
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
        <div align="center">                
        <h1>CLIENT LIST</h1>
   <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.String"%>
<%@ page import="java.io.*" %>
    .<%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
 <%@page isErrorPage="true" %> 
   <%@page isErrorPage="true" %> 
 <%@page errorPage="error.jsp" %>

    <h1>MONITORING THE CLIENTS</h1>
        <TABLE border="2">
            <TR><TD>
                    NUMBER OF TEXT FILE CONVERSION
                </TD>
                <TD>
                   NUMBER OF RTF FILE CONVERSION</TD>
                 
                <TD>NUMBER OF HTML FILE CONVERSION</TD>
                <TD> IDLE TIME OF TXT FILE CONVERSION APPLICATION IN SEC</TD>
                <TD> IDLE TIME OF RTF FILE CONVERSION APPLICATION IN SEC</TD>
                 <TD> IDLE TIME OF HTML FILE CONVERSION APPLICATION IN SEC</TD>
            </TR>
            
     <%
     Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        

           String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
  ResultSet theResult=theStatement.executeQuery("select * from login.number");
  while(theResult.next()){%>
   <tr>
         <td>
             
             <%
              
             out.println(theResult.getObject(1).toString());
             
%>
         </td>
         <td>
             
             <%
              
             out.println(theResult.getObject(2).toString());
             
%>
         </td>
         <td>
     <%
             out.println(theResult.getObject(3).toString());
             
%>
         </td>
         <td>
             
             <%out.println(theResult.getObject(4).toString());
             
%>
         </td>
         <td>
             
             <%out.println(theResult.getObject(5).toString());
             
%>
         </td>
     <td>
             
             <%
              
             out.println(theResult.getObject(6).toString());
             
%>
         </td>
    
     <%
             }

theStatement.close();
St.close();
connection.close();      
        
%>
<a href="admin.jsp">BACK</a>
 </tr>
        </TABLE>
       </div>              </div></div>
            </li><!-- end box1 -->           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>
