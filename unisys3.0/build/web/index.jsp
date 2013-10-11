<%-- 
    Document   : index
    Created on : 8 Feb, 2013, 11:07:58 AM
    Author     : Seshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h1><a href="index.jsp">SHIELD</a></h1>
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

        <div class="intro-box">
           <h1>Welcome.</h1>

           <p class="intro" align="justify">
"Companies want to understand their business data and better understand the operations of their business.We are really excited about giving them a way to monitor their data and also to have a secure data transformation.We are to give a higher level of support to your customers and we help them make more security than they did before. They can make money by going from reactive to proactive – don’t answer the phone when outage has occurred, find the problem and fix it first.”
<br><br>
We welcome you all to our CLOUD, where we promise the best of the abilities to monitor yourself and also to monitor all your clients.
We hope with the best of abilities and expertise we will give you just what you need. </p>

           <p class="intro">Learn more <a href="#about-us">about us</a>  or <a href="#contact">get in touch</a> if you want to hire us on your next project.</p>

        </div>
        <div class="intro-box1">
                <section id="login" class="clearfix">
                    <h1 align="center">Login Here</h1>
            <div class="primary">
<form method="post" action="process1.jsp" id="contactform">

                    <div>
                    <label>Name <span class="required">*</span></label>
                    <input name="username" type="text" id="uname" value="" />
                    </div>
    <div>
                    
        <label>Password <span class="required">*</span></label>
                    <input name="password" type="password" id="password" value="" />
                    
                                        </div>
<div>
    <input type="submit"  value="Login" class="button">
         			<input type="reset" value="Reset" class="button">
                               
                                <table>
                                <tr align="center">&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="register.jsp">Forgot your Password</a></tr>
                                </table>
					</div>
  Dont have an Account Till now<br><a href="register.jsp">Register  Here !</a>
</form>

            </div>
</section>
        </div>
        
        <div class="row no-bottom-margin">

            <section class="col">
                <h2>Creative Ideas</h2>

                <p>View, Analyse, Work and Deploy. Creativity evolves with the scope which transfer impossible to possible state. Monitoring makes itself well fletched beyond limits.  </p>
            </section>
            <section class="col mid">
                <h2>Innovation</h2>

                <p>Pellentesque magna mi, iaculis pharetra eu, fermentum ullamcorper nisi.
                Integer fringilla magna ut quam vulputate erat. Pulvinar cum, ac eu augue ut sit amet
                gravida lacinia, eros massa condimentum sem, a fermentum ligula lorem non.
                Phasellus vulputate.</p>
            </section>

            <section class="col">
                <h2>Design and Development</h2>

                <p>In hac habitasse platea risus dictumst. Suspendisse sit amet enim arcu. Aliquam erat volutpat.
                Phasellus a dui nisi. Nunc nec quam vitae nisl vehicula euismod. Lorem ipsum dolor sit amet,
                consectetur adipiscing elit. Sed commodo ligula blandit risus.</p>
            </section>
        </div>

        <a class="back-to-top" href="#main">Back to Top</a>

      </section>

      <!-- services -->
      <section id="services" >

             <h1>Our services.</h1>

             <div class="row no-bottom-margin">
                <section class="col">
                    <h2>Web Design</h2>

                    <p><img class="align-left" alt="" src="images/services/webdesign.png" />Pellentesque magna mi, iaculis pharetra eu, fermentum ullamcorper nisi.
                    Integer fringilla magna ut quam vulputate erat. Pulvinar cum, ac eu augue ut sit amet
                    gravida lacinia, eros massa condimentum sem, a fermentum ligula lorem non.
                    Phasellus vulputate.</p>
                </section>
                <section class="col mid">
                    <h2>Web Development</h2>

                    <p><img class="align-left" alt="" src="images/services/webdevelopment.png" />In hac habitasse platea risus dictumst. Suspendisse sit amet enim arcu. Aliquam erat volutpat.
                    Phasellus a dui nisi. Nunc nec quam vitae nisl vehicula euismod. Lorem ipsum dolor sit amet,
                    consectetur adipiscing elit. Sed commodo ligula blandit risus</p>
                </section>

                <section class="col">
                    <h2>SEO Services</h2>

                    <p><img class="align-left" alt="" src="images/services/seo-services.png" />Nascetur augue hac platea enim, egestas pulvinar vut. Pulvinar cum, ac eu, tristie
                    acus duis in dictumst non integer! Elit, sed scelerisque odio tortor, sed platea dis? Quis
                    cursus parturient ac amet odio in? Nunc Amet urna scelerisque eu lectus placerat.</p>

                </section>
            </div>

            <div class="row">
                <section class="col">
                    <h2>Print Design</h2>

                    <p><img class="align-left" alt="" src="images/services/print-design.png" />In hac habitasse platea risus dictumst. Suspendisse sit amet enim arcu. Aliquam erat volutpat.
                    Phasellus a dui nisi. Nunc nec quam vitae nisl vehicula euismod. Lorem ipsum dolor sit amet,
                    consectetur adipiscing elit. Sed commodo ligula blandit risus</p>
                </section>
                <section class="col mid">
                    <h2>Logo Design &amp; Branding</h2>

                    <p><img class="align-left" alt="" src="images/services/logo-design-and-branding.png" />Nascetur augue hac platea enim, egestas pulvinar vut. Pulvinar cum, ac eu, tristie
                    acus duis in dictumst non integer! Elit, sed scelerisque odio tortor, sed platea dis? Quis
                    cursus parturient ac amet odio in? Nunc Amet urna scelerisque eu lectus placerat.</p>
                </section>

                <section class="col">
                    <h2>Newsletter</h2>

                    <p><img class="align-left" alt="" src="images/services/newsletter.png" />Pellentesque magna mi, iaculis pharetra eu, fermentum ullamcorper nisi.
                    Integer fringilla magna ut quam vulputate erat. Pulvinar cum, ac eu augue ut sit amet
                    gravida lacinia, eros massa condimentum sem, a fermentum ligula lorem non.
                    Phasellus vulputate.</p>

                </section>
            </div>

            <a class="back-to-top" href="#main">Back to Top</a>

      </section>

     
      <!-- about us -->
      <section id="about-us" class="clearfix">

            <h1>About us.</h1>

            <div class="primary">

                <div class="row no-bottom-margin">

                    <section class="col first">

                        <h2>Our Process</h2>

                        <p>Nascetur augue hac platea enim, egestas pulvinar vut. Pulvinar cum, ac eu, tristie
                        acus duis in dictumst non integer! Elit, sed scelerisque odio tortor, sed platea dis? Quis
                        cursus parturient ac amet odio in? Nunc Amet urna scelerisque eu lectus placerat.</p>

                    </section>

                    <section class="col">

                        <h2>Our Approach</h2>

                        <p>Pellentesque magna mi, iaculis pharetra eu, fermentum ullamcorper nisi.
                        Integer fringilla magna ut quam vulputate erat. Pulvinar cum, ac eu augue ut sit amet
                        gravida lacinia, eros massa condimentum sem, a fermentum ligula lorem non.
                        Phasellus vulputate.</p>

                    </section>

                </div>

                <h2>Our Team</h2>
                <table>
                    <tr><td>
                    <center>
                <ul class="the-team">
                     <li>
                        <div class="thumbnail">
                            <a href="#"><img alt="thumbnail" src="images/thumb-pic.png" width="83" height="78"></a>
                        </div>
                        <p class="mname"><a href="#">Mr R.G Suresh Kumar</a></p>
                        <p>MCA, M.Tech(IT), Ph.D*,<br>Project Guide</p>
                    </li>
                </ul>
                    </center>
                        </td></tr>

                    <tr><td>
                    <ul class="the-team">
                    <li class="odd">
                        <div class="thumbnail">
                            <a href="#"><img alt="thumbnail" src="images/thumb-pic.png" width="83" height="78"></a>
                        </div>
                        <p class="mname"><a href="#">S.Ramaseshan</a></p>
                        <p>Team Lead,<br>Senior Web Designer &amp; Tester  </p>
                    </li>
                    <li>
                        <div class="thumbnail">
                            <a href="#"><img alt="thumbnail" src="images/thumb-pic.png" width="83" height="78"></a>
                        </div>
                        <p class="mname"><a href="#">A.Mohit Jain</a></p>
                        <p>Program Developer &amp; Database Admin</p>
                    </li>
                    <li class="odd">
                        <div class="thumbnail">
                            <a href="#"><img alt="thumbnail" src="images/thumb-pic.png" width="83" height="78"></a>
                        </div>
                        <p class="mname"><a href="#">C.Selvaganesh</a></p>
                        <p>Program Developer &amp; Database Admin</p>
                    </li>
                    <li>
                        <div class="thumbnail">
                            <a href="#"><img alt="thumbnail" src="images/thumb-pic.png" width="83" height="78"></a>
                        </div>
                        <p class="mname"><a href="#">M.Lalithkumar</a></p>
                        <p>Web Developer &amp;<br> Tester
                        </p>
                    </li>
                </ul>
                        </td></tr></table>
            </div>

            <aside>

                    <h2>More about us</h2>

                    <p>We call ourselves THINK-TANKERS.<BR> We THINK a LOT, WORK a LOT, and DO a LOT.</p>

                    <a href="#" class="download-btn">Download PDF</a>


                    <h2>Links</h2>


                    <ul class="link-list">
                        <li><a href="http://www.utfi.co.in" title="The Project Company">Unisys</a></li>
                        <li><a href="http://www.logicmonitor.com" title="Major Monitoring Company">Logic Monitor</a></li>
                        <li><a href="http://www.nimsoft.com" title="System and Application Monitoring">Appfirst</a></li>
                        <li><a href="http://cloud.ibm.com" title="Monitoring Agents">IBM</a></li>
                    </ul>


                    <h2>Testimonials</h2>

                    <div class="testimonials">
                        <blockquote>
                            <p>I am very happy with the kind of work that you have done so far.<br> I wish you the best for you success on this project.</p>

                            <cite>&mdash; Mr. R.G Suresh Kumar ,RGCET</cite>
                        </blockquote>
                        <blockquote>
                            <p>Your Presentation style is always unique.<br>Keep up the style and do your best, and you win the event hands-off. </p>

                            <cite>&mdash; Rajesh, Unisys Guide</cite>
                        </blockquote>
                        
                    </div>

            </aside>



            <a class="back-to-top" href="#main">Back to Top</a>

      </section>

      <!-- contact -->
      <section id="contact" class="clearfix">

            <h1>Get in touch.</h1>

            <div class="primary">

                <p class="intro">
                In hac habitasse platea risus dictumst. Suspendisse enim arcu. Aliquam erat volutpat.
                Phasellus a dui nisi. Nunc nec quam vitae nisl vehicula euismod. Lorem ipsum dolor sit amet,
                consectetur adipiscing elit. Sed commodo ligula blandit risus. Pellentesque magna mi,
                iaculis pharetra eu, fermentum ullamcorper nisi. Integer fringilla magna ut quam vulputate erat.
                </p>

                <form method="post" action="contact.php" id="contactform">

                    <div>
                    <p>Send me a message</p>
                    </div>

                    <div>
                    <label>Name <span class="required">*</span></label>
                    <input name="name" type="text" id="name" value="" />
                    </div>

                    <div>
                    <label>Email <span class="required">*</span></label>
                    <input name="email" type="text" id="email" value="" />
                    </div>

                    <div>
                    <label>Website</label>
                    <input name="website" type="text" id="website" value="" />
                    </div>

                    <div>
                    <label>Subject</label>
                    <input name="subject" type="text" id="subject"  value="" />
                    </div>

                    <div>
                    <label>Message <span class="required">*</span></label>
                    <textarea name="message" rows="20" cols="50"  id="message" ></textarea><br /><br />
                    </div>

                    <div>
					<input type="submit"  value="Submit" class="button">
         			<input type="reset" value="Reset" class="button">
					</div>


                </form>

            </div>

            <aside>

                    <h2>Contact Information</h2>


                    <p>R.G Suresh Kumar<br>S.Ramaseshan<br>A.Mohit Jain<br>C.Selvaganesh<br>M.Lalith Kumar</p>

                    <p>
                    Rajiv Gandhi College of Engineering and Technology <br />
                    Kirumambakam 012 <br />
                    Pondicherry
                    </p>

                    <p>
                    Phone:+918144130292 <br />
                    Email:ramaseshanmukund@gmail.com
                    </p>


                    <h2>Follow Us</h2>

                    <ul class="link-list social">
                        <li class="facebook"><a href="www.facebook.com/ramaseshanmukund">Facebook</a></li>
                        <li class="googleplus"><a href="#">Google+</a></li>
                        <li class="twitter"><a href="#">Twitter</a></li>
                        <li class="dribble"><a href="#">Dribble</a></li>
                        <li class="linkedin"><a href="#">Linkedin</a></li>
                        <li class="delicious"><a href="#">Delicious</a></li>
                        <li class="flickr"><a href="#">Flickr</a></li>
                    </ul>

            </aside>

            <a class="back-to-top" href="#main">Back to Top</a>

     </section>

</div>

<!-- footer -->
<footer>
    <div class="footer-content">
        <ul class="footer-menu">
            <li><a href="#main">Home</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#about-us">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <!-- <li class="rss-feed"><a href="#">RSS Feed</a></li> -->
        </ul>

        <p class="footer-text">Copyright 2011 PageOne. &nbsp;&nbsp;&nbsp; Designed by <a href="http://www.styleshout.com/">Styleshout</a></p>
    </div>

</footer>

</body>
</html>
