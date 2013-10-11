
<%-- 
    Document   : index
    Created on : Jan 7, 2013, 11:57:46 PM
    Author     : selvaas
--%>

<html>
<head>
	<title>CONVERTING</title>
        
	
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" language="javascript" src="js/validate.js"></script>
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
<%@page import= "java.sql.*" %>
<%@page import ="java.io.*"%> 
<%@page import="javax.servlet.annotation.WebServlet"%>

<%@page import="javax.servlet.*"%>
 <%@ page import="java.io.*" %>
    <%@ page import="java.util.*" %>
<%@page import ="java.io.*"%> 
 <%@page import ="java.sql.*"%> 
 <%@page isErrorPage="true" %> 
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.Document"%>
<%@page import="com.lowagie.text.Paragraph"%>
<%@page import="com.lowagie.text.pdf.PRIndirectReference"%>
<%@page import="com.lowagie.text.pdf.PRStream"%>
<%@page import="com.lowagie.text.pdf.PRTokeniser"%>
<%@page import="com.lowagie.text.pdf.PdfDictionary"%>
<%@page import="com.lowagie.text.pdf.PdfName"%>
<%@page import="com.lowagie.text.pdf.PdfReader"%>
<%  
                     try {
    Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        
        


        String connectionURL=prop.getProperty("connurl");
         
        Connection connection=null;
Class.forName(prop.getProperty("driver")).newInstance();
connection=DriverManager.getConnection(connectionURL,prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=connection.createStatement();
Statement St=connection.createStatement();
int temp=0;

ResultSet theResult=theStatement.executeQuery("select * from login.converthtml where fsize > 0");
 
 while(theResult.next())         
         {
    
   temp=1;
      Document document = new Document();
      document.open();
      String fil=theResult.getObject(2).toString();
      File file2=new File(theResult.getObject(2).toString());%>
      <%@ page import="java.io.*,javax.crypto.*,javax.crypto.spec.*,java.util.*;" language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%
String password,newfile;


FileInputStream inFile;
FileOutputStream outFile;

password="m";



inFile = new FileInputStream(file2);
String fill=theResult.getObject(5).toString();
outFile = new FileOutputStream(fill+".pdf");

fill=fill+".pdf";
try
{

PBEKeySpec keySpec = new PBEKeySpec(password.toCharArray());
SecretKeyFactory keyFactory =
SecretKeyFactory.getInstance("PBEWithMD5AndDES");
SecretKey passwordKey = keyFactory.generateSecret(keySpec);



byte[] salt = new byte[8];
inFile.read(salt);
int iterations = 100;

PBEParameterSpec parameterSpec = new PBEParameterSpec(salt, iterations);



Cipher cipher = Cipher.getInstance("PBEWithMD5AndDES");
cipher.init(Cipher.DECRYPT_MODE, passwordKey, parameterSpec);


byte[] input = new byte[64];
int bytesRead;
while ((bytesRead = inFile.read(input)) != -1)
{
byte[] output = cipher.update(input, 0, bytesRead);
if (output != null)
outFile.write(output);
}

byte[] output = cipher.doFinal();
if (output != null)
outFile.write(output);

inFile.close();
outFile.flush();
outFile.close();

}
catch(Exception e)
{
System.out.println(e.getMessage());
System.out.println(e.getLocalizedMessage());
System.out.println(e.getCause());



}


%>
      <%
                       
      PdfReader reader = new PdfReader(fill) ;
      String p=theResult.getObject(2).toString();
       String ppp=theResult.getObject(5).toString();
      int   val = St.executeUpdate("update filemonitor set state=1 where filename='"+ppp+"'");
      String pp=theResult.getObject(1).toString();
      FileOutputStream fos=new FileOutputStream(theResult.getObject(3).toString());
  PreparedStatement ps3;
  
  val = St.executeUpdate("update filemonitor set source='PRIVATE CLOUD' where state=1");
  val = St.executeUpdate("update filemonitor set dest='ENTERING APPLICATION SERVER 3' where state=1");
      for(int i=1;i<5;i++)
      {
          
      PdfDictionary dictionary = reader.getPageN(i);
      PRIndirectReference reference = (PRIndirectReference) 
                dictionary.get(PdfName.CONTENTS);
                        PRStream stream = (PRStream) PdfReader.getPdfObject(reference);
                        byte[] bytes = PdfReader.getStreamBytes(stream);
                        PRTokeniser tokenizer = new PRTokeniser(bytes);
                        
                        StringBuilder buffer = new StringBuilder();
                        while (tokenizer.nextToken()) {
                        if (tokenizer.getTokenType() == PRTokeniser.TK_STRING) {
                                        buffer.append(tokenizer.getStringValue());
                                        }
                        }
                String test=buffer.toString();
                StringReader stReader = new StringReader(test);
                int t;
                while((t=stReader.read())>0) {
              fos.write(t);
          }
      }           File f = new File (p);
f.delete();

St.executeUpdate("delete from login.converthtml where username='"+pp+"'"); 

val = St.executeUpdate("update filemonitor set source='EXITING APPLICATION SERVER 3' where state=1");
  val = St.executeUpdate("update filemonitor set dest='BACK TO PUBLIC CLOUD' where state=1");
 
                document.add(new Paragraph(".."));
                document.close();
  
              St.executeUpdate("delete from filemonitor where state=1");            
  int count=0;
     ResultSet theResult3=theStatement.executeQuery("select * from login.number");
 
 while(theResult3.next())         
         {
     count=theResult3.getInt(3);
     }
     count=count+1;
     int val2 = St.executeUpdate("update login.number set html='"+count+"'");

         count=0;
     theResult3=theStatement.executeQuery("select * from login.inout");
 
 while(theResult3.next())         
         {
     count=theResult3.getInt(6);
     }
     count=count+1;
     val2 = St.executeUpdate("update login.inout set htmlout='"+count+"'");

         } 
if(temp==0)
{
    theResult=theStatement.executeQuery("select * from login.number");
 
 while(theResult.next())         
         { 
     int idle1=theResult.getInt(6);
     idle1=idle1+5;
     int val = St.executeUpdate("update login.number set idlehtml='"+idle1+"'");
 
 }  
} theStatement.close();
St.close();
connection.close();}
         catch (Exception e) {}
   
response.setHeader("Refresh","5");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
%>
                        
                    </div></div>
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>
