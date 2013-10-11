
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
   <%@page isErrorPage="true" %> 
 <%@page errorPage="error.jsp" %>
 

<!DOCTYPE html>
<!--[if IE 7 ]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html> <!--<![endif]-->
     <head> 
    <meta charset="utf-8"/>
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SHIELD</title>

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
                <li><a href="#main">Home</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="#about-us">About Us</a></li>
                <li><a href="#contact">Contact Us</a></li>
            </ul>
        </nav>

    </header>
</div>

<!-- content-wrap -->
<div class="content-wrap">

    <!-- main -->
    <section id="main">
 <div class="intro-box1">
      <section id="login" class="clearfix">
                    
            <div class="primary">
          <h1>Note to Users:</h1>
<ul>
<li>Please Upload only PDF files to convert</li>
<li>Things are free, but are limited only to 8 files per user.</li>
<li>Every User is given only 100MB of file storage.</li>
<li>Please do delete the unwanted files after usage, or you cannot upload new files when your storage is full</li></ul>
</div>
        </div>
        <div class="intro-box">
            <%   
                  Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        
                String connectionURL=prop.getProperty("connurl");
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();

 //to get the content type information from JSP Request Header
String as=(String)session.getAttribute("as");
  Calendar calendar = new GregorianCalendar(); 
int minute = calendar.get(Calendar.MINUTE); 
minute=(calendar.get(Calendar.HOUR)*3600)+(minute*60)+calendar.get(Calendar.SECOND);
PreparedStatement ps1;
  ps1 = connection.prepareStatement("update activitylist set min = ? where username='"+as+"'");
  ps1.setInt(1,minute);
  ps1.executeUpdate();
    

   String contentType = request.getContentType();
        //here we are checking the content type is not equal to Null and as well as the passed data from mulitpart/form-data is greater than or equal to 0
        if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());
                //we are taking the length of Content type data
                int formDataLength = request.getContentLength();
                byte dataBytes[] = new byte[formDataLength];
                int byteRead = 0;
                int totalBytesRead = 0;
                //this loop converting the uploaded file into byte code
                while (totalBytesRead < formDataLength) {
                        byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                        totalBytesRead += byteRead;
                        }
                                        String file = new String(dataBytes);
                //for saving the file name
                String saveFile = file.substring(file.indexOf("filename=\"") + 10);
                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));

String filenam=saveFile;

                saveFile=prop.getProperty("pubcloud")+as+"\\"+saveFile;
          
 
 as=(String)session.getAttribute("as");

 
         
     String q = filenam;

  ps1 = connection.prepareStatement("update activitylist set filename = ? where username='"+as+"'");
  ps1.setString(1, q);
  ps1.executeUpdate();   
   int val = St.executeUpdate("update activitylist set lastactivity='ups' where username='"+as+"'");
 int updateQuery1 = 0;
        String QueryString1 = "INSERT INTO login.history SELECT * FROM activitylist where username='"+as+"'";
        ps1 = connection.prepareCall(QueryString1);
        ps1.executeUpdate(); 
         String ext = saveFile.substring(saveFile.indexOf(".")+1);
 if(ext.equals("pdf")||ext.equals("PDF"))
 {               
                 int lastIndex = contentType.lastIndexOf("=");
                String boundary = contentType.substring(lastIndex + 1,contentType.length());
                int pos;
                //extracting the index of file 
                pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
                // creating a new file with the same name and writing the content in new file
                FileOutputStream fileOut = new FileOutputStream(saveFile);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
                %><Br><table border="2"><tr><td><b>You have successfully
 upload the file by the name of:</b>
 <Br></table><table border="2"><tr><td>
             
             <b><%out.println(filenam); %></b> </td></tr></table>  <%
                 
%>
                 <a href="viewfile.jsp">view uploaded file here</a>
            
                 <%
                 String q1="LOCAL SYSTEM";
 String q2="FOLDER IN PUBLIC CLOUD";
 
 
   ps1 = connection.prepareStatement("insert into filemonitor values(?,?,?,?,?)");
  ps1.setString(1, as);
  ps1.setString(2, filenam);
  ps1.setString(3, q1);
  ps1.setString(4, q2);
  ps1.setInt(5, 0);
  ps1.executeUpdate();
File f = new File(prop.getProperty("pubcloud")+"//"+as+"");
        File[] files = f.listFiles();
        int n=files.length;
        ps1 = connection.prepareStatement("update activitylist set totalfile = ? where username='"+as+"'");
    ps1.setInt(1,n);
    ps1.executeUpdate();

  val = St.executeUpdate("update activitylist set lastactivity='upe' where username='"+as+"'");
 
        int updateQuery = 0;
        String QueryString = "INSERT INTO login.history SELECT * FROM activitylist where username='"+as+"'";
        ps1 = connection.prepareCall(QueryString);
        ps1.executeUpdate();
  
theStatement.close();
St.close();
connection.close();
        
                }
         
else
{
    out.println("only pdf files can be uploaded");
}  
}
%>
        </div>
    </section>
</div>
                 


   </body>
 </html>
