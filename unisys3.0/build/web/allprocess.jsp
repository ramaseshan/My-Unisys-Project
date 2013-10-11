

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 7 ]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html> <!--<![endif]-->
  <%@page isErrorPage="true" %> 
 <%@page errorPage="error.jsp" %>
 <%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
 <%@page import="java.lang.String"%>
<head>
<title>Monster Cloud:Home Page</title>
     
        <script>
            
function go() {
window.location.replace("logout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}

</script>


<script>
function file() {
window.location.replace("viewfile.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
self.close()
}
</script>	
    <meta charset="utf-8"/>
    <meta name="description" content="">
    <meta name="author" content="">


    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
    <link rel="stylesheet" href="css/jquery.fancybox-1.3.4.css" type="text/css" />

    <!--[if lt IE 9]>
	    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

  
    <script>window.jQuery || document.write('<script src="js/jquery-1.6.1.min.js"><\/script>')</script>

    <script src="js/jquery.smoothscroll.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>
    <script src="js/jquery.easing-1.3.pack.js"></script>
    <script src="js/jquery.fancybox-1.3.4.pack.js"></script>
    <script src="js/init.js"></script>

</head>

<body>

<!-- header-wrap -->
<div id="header-wrap">
    <header>

        <hgroup>
            <h1><a href="#">SHIELD</a></h1>
            <h3></h3>
        </hgroup>

        <nav>
            <ul>
                <li><a href="#main">Upload</a></li>
                <li><a href="#history">Show History</a></li>
                <li><a href="#info">Client Info</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>
        </nav>

    </header>
</div>

<!-- content-wrap -->
<div class="content-wrap">

    <!-- main -->
    <section id="main">
       
        <div class="row no-bottom-margin"> 
        <div class="intro-box">
          <h1>Note to Users:</h1>
<ul>
<li>Please Upload only PDF files to convert</li>
<li>Things are free, but are limited only to 8 files per user.</li>
<li>Every User is given only 100MB of file storage.</li>
<li>Please do delete the unwanted files after usage, or you cannot upload new files when your storage is full</li>
<li>If you have any queries please feel free to  <a href="#contact">Contact us</a></li>
</ul>
        </div>
            
<%

Properties prop = new Properties();
      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
     String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
String as=(String)session.getAttribute("as");
session.setAttribute("as",as);
 String view="home";
PreparedStatement ps1;
  ps1 = connection.prepareStatement("update activitylist set lastactivity = ? where username='"+as+"'");
  ps1.setString(1,view);
  ps1.executeUpdate();
File f = new File(prop.getProperty("pubcloud")+"//"+as);
        File[] files = f.listFiles();
        if(files.length<8){
%><div class="intro-box1">
                <section id="login" class="clearfix">
                    <h1 align="center">Upload Files </h1>
            <div class="primary">
<form method="post" action="upload.jsp" name="upform"  enctype="multipart/form-data" id="contactform">  
   <input type="file" name="uploadfile" class="button" >  
        <input type="hidden" name="todo" value="upload" class="button"> 
        <br>
        <input type="submit" name="Submit" value="Upload" class="button">  
        <input type="reset" name="Reset" value="Cancel" class="button">  
</form> 



                    
                    
  
                        
            
                    
        <%
    }
        else
                   {
            out.println("File Limit Exceeded !!\n Please Delete some files and Proceed To Upload");
               }
    %>
    <a href="javascript:file()"><b>View Your Files Here</b></a>
    <BR>
    <a href="javascript:go()"><b>Logout</b></a>
                        
                    </div>
</div>            </div>
    
</section>
  
     <section id="history">
        <div class="row no-bottom-margin">   
         <table border="1px">
                      
<font style="font-family: comic;"> 
            <tr><th>FILE NAME</th>
           
                <th>
                   ACTION PERFORMED</Th>
                 
                <th>LAST ACTION TIMING</th>
                <th> NAME OF FILE LAST ACCESSED</th>
               
            </tr>
            </font>
            
            <% 
 ResultSet theResult=theStatement.executeQuery("select * from history where username='"+as+"'");
 while(theResult.next())         
         {
 
   %>
     <tr>
        <td>
             
             <%out.println(theResult.getObject(7).toString());
             
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
        
     </tr>
     
     <%
             } 
 %>        
            
            </table>

   
<a href="history.jsp">CLEAR HISTORY</a> 
                    </div></div>
            </li>
         
         
         
    </section>
    </div>    
</div>
    
    
    
    
</body>
</html>