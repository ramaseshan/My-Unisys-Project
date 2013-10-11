<%-- 
    Document   : index
    Created on : Jan 2, 2013, 2:54:52 PM
    Author     : selvaas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monster Cloud:Home Page</title>
    <link rel="stylesheet" type="text/css" href="css/design.css">
    <link rel="stylesheet" type="text/css" href="css/home.css">
    <link rel="stylesheet" type="text/css" href="css/login.css">
       <link rel="stylesheet" type="text/css" href="css/font.css">
        <link rel="stylesheet" type="text/css" href="css/button.css">
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
    	<ul id="menu">
       	  <li><a href="#box1" class="link">Home</a></li>
            <li><a href="#box2" class="link">Our Clients</a></li>
            <li><a href="#box3" class="link">Login</a></li>
            <li><a href="#box4" class="link">Contact Us</a></li>
      </ul>
</div><!-- end header -->
	<div id="wrapper">
    	<ul id="mask">
            
            <%--Start of Box 1--%>
        	<li id="box1" class="box">
            	<a name="box1"></a>
                <div class="content"><div class="inner">
 <center> <div class="heading">
                               
                                Welcome To SHIELD
                              
                            </div>
                        </center>
                        <div class="home">       
                        <br>Cloud computing is all the rage. "It's become the phrase du jour," 
        says Gartner senior analyst Ben Pring, echoing many of his peers. 
        <br>Cloud computing comes into focus only when you think about what IT always needs: 
        a way to increase capacity or add capabilities on the fly without investing in new infrastructure, 
        training new personnel, or licensing new software. Cloud computing encompasses any
        subscription-based or pay-per-use service that, in real time over the Internet, extends IT's
        existing capabilities."
        
       <br>“Companies want to understand their business data and better
        understand the operations of their business.We are really excited about giving them a way to monitor their data and 
        also to have a secure data transformation.We are to give a higher level of support to your customers and we help them make more 
        security than they did before. They can make money by going from reactive
        to proactive – don’t answer the phone when outage has occurred, find the problem and fix it first.”
        <br><br>
        We welcome you all to our CLOUD, where we promise the best of the abilities to monitor yourself and also to monitor all your clients.
        <br>We hope with the best of abilities and expertise we will give you just what you need.
                        
                        </div>                        
                        
                        
                        
                    </div></div>
            </li><!-- end box1 -->
              <%--Start of Box 2--%>
            
            
            <li id="box2" class="box">
            	<a name="box2"></a>
                <div class="content"><div class="inner">
                        Box 2
                    
                    
                    </div></div>
            </li><!-- end box2 -->
            
            
             <%--Start of Box 3--%>
            <li id="box3" class="box">
            	<a name="box3"></a>
                <div class="content"><div class="inner">
                       <br><br><br><br><br>
           <%--Start of Login Code--%> 
   <center>  
       
       <div id="formdiv">
 
<table>
 
     <tr>
     <div class="error"> If you dont have a Database user account please contact the Database Administrator.</div>
</tr>
<br><br>
<tr>
   <td>
    <form action="process1.jsp" name="loginform" class="" id="form1" method="post" onsubmit="return validate(this)">
<label>Username </label>
<input type="text" name="username" title="Enter Your Username" placeholder="Username"/><br />
<label>Password </label>

<input type="password" name="password" title="Enter Your Password" placeholder="Password"/><br/>
<button type="submit" title="Login">Login</button> <button type="reset" title="Reset Fields">Clear</button>
</form>
        </td>
       
       
<%--End of Login code--%>

<td width="20%"></td>
    
<td>
    <br>Forgot you password ?<br>
    <form action="process1.jsp" name="loginform" class="" id="form1" method="post" onsubmit="return validate(this)">
       
<label>Email </label><br>
<input type="text" name="username" title="Enter Your Username" placeholder="Username"/><br />
    <button type="submit" title="Login">Get Password</button><br><br><br><br><br></td>
 </tr>
 
</table>
 </div>
 </center>  
         
                    
                    
                    </div></div>
            </li><!-- end box3 -->        
            
       <%--Start of Box 4--%>
            <li id="box4" class="box">
                <a name="box4"></a>
                <div class="content"><div class="inner"> <br><br>
                        <div class="contact">
                            <br>
<table >
<tr>
<td width="100%">You can contact us @<br>
Rajiv Gandhi College of Engineering and Technology<br>
Pondicherry</td>
</tr>
</table>
                            <table>
<tr>
<td><br>
You can also ping us @<br>
8144130292<br>
or mail us @<br>
projectsuccess@rgcetpdy.ac.in
</td>
<td width="30%"></td>
<td><center>It would great to hear from you<br>
    <a href="contactus.jsp">
        <span class="msgbutton">Leave us a message</span>
    </a>
</center>
                            </td>
</tr>
</table>
                            <center>                    <br><br><br>
                            <table> Click here to know <a href="aboutus.jsp">Our Team</a></table>
                            </center>

 
                        </div>
                    </div>
            </li><!-- end box4 -->
        
            
            
            
        </ul><!-- end mask -->
        
    </div><!-- end wrapper -->
    
</body>
</html>
