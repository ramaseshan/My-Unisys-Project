<%-- 
    Document   : register
    Created on : 8 Feb, 2013, 2:39:21 PM
    Author     : Seshan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 7 ]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie8 oldie"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html> <!--<![endif]-->

<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
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

<!-- header-wrap -->
<div id="header-wrap">
    <header>

        <hgroup>
            <h1><a href="#">SHIELD</a></h1>
            <h3></h3>
        </hgroup>

        

    </header>
</div>

<!-- content-wrap -->
<div class="content-wrap">

    <!-- main -->
    <section id="main">
            
                <section id="login" class="clearfix">
                    <div>
                       <h1 align="center"style="font-size: 96px;">SHIELD</h1>
                    </div>
            <div class="primary">
                <H2>Registration</H2>
           
 <form name="register" action="register" method="POST" onsubmit="return validateForm()">

                    <div>
                    <label>First Name <span class="required">*</span></label>
                    <INPUT TYPE="text" NAME="fname" id="uname" value="" />
                    </div>
      <div>
                    <label>Last Name <span class="required">*</span></label>
                    <INPUT TYPE="text" NAME="uname" id="uname" value="" />
                    </div>
      <div>
                    <label>Mobile Number <span class="required">*</span></label>
                    <INPUT TYPE="text" NAME="mobno" id="uname" value="" />
                    </div>
      <div>
                    <label>User Name <span class="required">*</span></label>
                    <input name="uname" type="text" id="uname" value="" />
                    </div>
    <div>
                    
        <label>Password <span class="required">*</span></label>
                    <input name="passwd" type="password" id="password" value="" />
                    
                                        </div>
      <div>
                    
        <label>Re-Type Password <span class="required">*</span></label>
                    <input name="passwd1" type="password" id="password" value="" />
                    
                                        </div>
<div>
    <input type="submit"  value="Register" class="button">
         			<input type="reset" value="Reset" class="button">
</div>
 </form>
                <div>Headed here Wrongly ???<br> Click here to go back to <a href="index.jsp">Login Page</a></div>
                
            </div>
                     </section>
</div>
</body>
</html>