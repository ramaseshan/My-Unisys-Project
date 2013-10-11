<%-- 
    Document   : index
    Created on : Jan 7, 2013, 11:57:46 PM
    Author     : selvaas
--%>

<html>
<head>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
           <%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
 <%@ page import="java.sql.*"%>
 
 
	<title>FILE MONITORING</title>
  	
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">

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
                        
         <% Calendar calendar = new GregorianCalendar(); 
int minute = calendar.get(Calendar.MINUTE); 
minute=(calendar.get(Calendar.HOUR)*3600)+(minute*60)+calendar.get(Calendar.SECOND);
%>

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

%>


<font style="color: 0ABB1C; font-size: 20px;">             <h1>MONITORING THE FILES</h1>
</font>   <TABLE border="2">
            <TR><TD>
                    ONLINE CLIENTS
                </TD>
                <TD>
                   FILE NAME</TD>
                 
                <TD>SOURCE</TD>
                <TD>DESIGNATION</TD>
                
            </TR>
       
      
            <%

 ResultSet theResult=theStatement.executeQuery("select * from filemonitor");
 while(theResult.next())         
         {
 
   %>
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
             
             <%out.println(theResult.getObject(3).toString());
             
%>
         </td>
          <td>
             
             <%out.println(theResult.getObject(4).toString());
    }        
%>
         </td>
        
     </tr>
       
      <%
      long si=getFileSize(new File(prop.getProperty("adminpath")));
      si=si/1024;
      long si1=getFileSize(new File(prop.getProperty("adminpath1")));
      si1=si1/1024;
      long si2=getFileSize(new File(prop.getProperty("adminpath2")));
      si2=si2/1024;
      ResultSet theResult8=theStatement.executeQuery("select * from login.convert where fsize>=0 ");
      long siz=0;
      while(theResult8.next())
             {
        siz= siz + theResult8.getInt(4);
}
      theResult8=theStatement.executeQuery("select * from login.convertrtf where fsize>=0 ");
      long siz1=0;
      while(theResult8.next())
             {
        siz1= siz1 + theResult8.getInt(4);
}
theResult8=theStatement.executeQuery("select * from login.converthtml where fsize>=0 ");
      long siz2=0;
      while(theResult8.next())
             {
        siz2= siz2 + theResult8.getInt(4);
}

%>
<font style="color: red; font-size: 20px;"><blink>




 <%
  if(si-siz>10)
           {
      long ss=si-siz;
       out.println("UNCONVERTED FILES OF SIZE: ");
   out.println(ss);
   out.println("  Kb");
    out.println(" IS STILL PENDING TO BE CONVERTED TO TEXT FILE.");
  }
      if(si1-siz1>10)
           {
      long ss1=si1-siz1;
       out.println("UNCONVERTED FILES OF SIZE: ");
   out.println(ss1);
   out.println("  Kb");
    out.println(" IS STILL PENDING TO BE CONVERTED TO RTF FILE.");
  }
      if(si2-siz2>10)
           {
      long ss2=si2-siz2;
       out.println("UNCONVERTED FILES OF SIZE: ");
   out.println(ss2);
   out.println("  Kb");
    out.println(" IS STILL PENDING TO BE CONVERTED TO HTML FILE.");
  }
 %>
 </blink></font>

     <%
             

 

 
theStatement.close();
St.close();
connection.close();
response.setHeader("Refresh","1");
response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1
%>     





            
            
            </TABLE>
    
                    </div></div>
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>