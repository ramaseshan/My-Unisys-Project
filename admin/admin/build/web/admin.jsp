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
    <link rel="stylesheet" type="text/css" href="css/font.css">
  
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
                        <br><br><br>                 
                        <div class="highlight">    <h1>MONSTER CLOUD ADMIN PAGE</h1></div>
                        <font style="font-family: fantasy;font-size: 20px; color: indigo;">
<%
String  uname=request.getParameter("username");
out.println("<h2>WELCOME "+uname);
session.setAttribute(uname,"as");
%>
</font>
<div align="center">
    <form action="register1.jsp" method="post">
        <input type="submit" value="Add Admin Account" class="button" /><br>
        
         <br> <a href="javascript:go()"><b>Logout</b></a> <br>
         <a href="convert.jsp">PDF TO TEXT CONVERTER</a><br>
         <br><br>
         <a href="convertrtf.jsp">PDF TO RTF CONVERTER</a><br>
         <br><br>
         <a href="converthtml.jsp">PDF TO HTML CONVERTER</a><br>
         <br><br><a href="application.jsp">PERFORMANCE MONITORING</a><br>
         <br><br>
          <a href="client.jsp">CLIENT LIST</a><br>
    </form>
    
</div>
                    </div></div>
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>

