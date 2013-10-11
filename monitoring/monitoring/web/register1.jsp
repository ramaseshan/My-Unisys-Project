<%-- 
    Document   : index
    Created on : Jan 7, 2013, 11:57:46 PM
    Author     : selvaas
--%>

<html>
<head>
	<title>DATABASE ADMIN REGISTRATION</title>
 	
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/regform.css">
<link rel="stylesheet" type="text/css" href="css/button.css">    
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
        <script>
            {
                function validateForm()
{
var x=document.forms["register"]["fname"].value;
if (x==null || x=="")
  {
  alert("First name cannot be empty");
  return false;
  }
  var x=document.forms["register"]["lname"].value;
if (x==null || x=="")
  {
  alert("Last name cannot be empty");
  return false;
  }
  var x=document.forms["register"]["mobno"].value;
if (x==null || x=="")
  {
  alert("Mobile Number cannot be empty");
  return false;
  }
  
  var x=document.forms["register"]["name"].value;
if (x==null || x=="")
  {
  alert("Username Cannot be Empty");
  return false;
  }
    var x=document.forms["register"]["passwd"].value;
    var y=document.forms["register"]["passwd1"].value;
if ((x==null || x=="")||(y==null || y==""))
  {
  alert("Password Cannot be Empty");
  return false;
  }
  var x=document.forms["register"]["passwd"].value;
  var y=document.forms["register"]["passwd1"].value;
if (x!=y)
  {
  alert("Password Mismatch");
  return false;
  }
  
}
            }
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
                         <div class="reghead">
                        <center>
                            SHIELD Registration </center></div>
                          <%
String as=(String)session.getAttribute("as"); 

if(as==null)
{
    response.sendRedirect("index.jsp");
}                         
%>
                             <FORM name="register" action="register" method="POST" onsubmit="return validateForm()">
                                 <center><TABLE class="reg">
         <TR>
              <TH width="50%">FIRST NAME</TH>
                  <TD width="50%"><INPUT TYPE="text" NAME="fname"></TD>
         </TR>
      <TR>
             <TH width="50%"><br>LAST NAME</TH>
                 <TD width="50%"><INPUT TYPE="text" NAME="lname"></TD>
          </TR>
          <TR>
             <TH width="50%"><br>MOBILE NO</TH>
             <TD width="50%"><INPUT TYPE="text" NAME="mobno" value="+91-"></TD>
          </TR>
          <TR>
              <TH width="50%"><br>USER NAME</TH>
                  <TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
         </TR>
         <TR>
              <TH width="50%"><br>EMAIL</TH>
                  <TD width="50%"><INPUT TYPE="text" NAME="mail"></TD>
         </TR>
         <TR>
              <TH width="50%"><br>PASSWORD</TH>
                  <TD width="50%"><INPUT TYPE="password" NAME="passwd"></TD>
         </TR>
          <TR>
              <TH width="50%"><br>RETYPE PASSWORD</TH>
                  <TD width="50%"><INPUT TYPE="password" NAME="passwd1"></TD>
         </TR>                  <TR>
              <TH>
                  
              </TH>
         <br>
                  <TD width="50%"><INPUT TYPE="submit" VALUE="SUBMIT"></TD>
          </TR>
          </TABLE>    </center>                                        
                  
                                                 
	</FORM>	
                   <center>       
                       <br><div class="regfotter">  
                           Headed here Wrongly ???<br> Go back to <a href="index.jsp">Login Page</a><br></center></div>
                        
           </div>         </div>
               
            </li><!-- end box1 -->
           
        </ul><!-- end mask -->
    </div><!-- end wrapper -->
</body>
</html>

		

    