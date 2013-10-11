package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.io.*;
import java.sql.*;
import java.lang.String;

public final class allprocess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    Throwable exception = org.apache.jasper.runtime.JspRuntimeLibrary.getThrowable(request);
    if (exception != null) {
      response.setStatus((Integer)request.getAttribute("javax.servlet.error.status_code"));
    }
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"error.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--[if IE 7 ]>    <html class=\"ie7 oldie\"> <![endif]-->\n");
      out.write("<!--[if IE 8 ]>    <html class=\"ie8 oldie\"> <![endif]-->\n");
      out.write("<!--[if IE 9 ]>    <html class=\"ie9\"> <![endif]-->\n");
      out.write("<!--[if (gt IE 9)|!(IE)]><!--> <html> <!--<![endif]-->\n");
      out.write("   \n");
      out.write(" \n");
      out.write(" \n");
      out.write(" \n");
      out.write("  \n");
      out.write(" \n");
      out.write("<head>\n");
      out.write("<title>Monster Cloud:Home Page</title>\n");
      out.write("     \n");
      out.write("        <script>\n");
      out.write("            \n");
      out.write("function go() {\n");
      out.write("window.location.replace(\"logout.jsp\",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');\n");
      out.write("self.close()\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function file() {\n");
      out.write("window.location.replace(\"viewfile.jsp\",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');\n");
      out.write("self.close()\n");
      out.write("}\n");
      out.write("</script>\t\n");
      out.write("    <meta charset=\"utf-8\"/>\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"screen\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/nivo-slider.css\" type=\"text/css\" />\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/jquery.fancybox-1.3.4.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("\t    <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("  \n");
      out.write("    <script>window.jQuery || document.write('<script src=\"js/jquery-1.6.1.min.js\"><\\/script>')</script>\n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.smoothscroll.js\"></script>\n");
      out.write("    <script src=\"js/jquery.nivo.slider.pack.js\"></script>\n");
      out.write("    <script src=\"js/jquery.easing-1.3.pack.js\"></script>\n");
      out.write("    <script src=\"js/jquery.fancybox-1.3.4.pack.js\"></script>\n");
      out.write("    <script src=\"js/init.js\"></script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!-- header-wrap -->\n");
      out.write("<div id=\"header-wrap\">\n");
      out.write("    <header>\n");
      out.write("\n");
      out.write("        <hgroup>\n");
      out.write("            <h1><a href=\"#\">SHIELD</a></h1>\n");
      out.write("            <h3></h3>\n");
      out.write("        </hgroup>\n");
      out.write("\n");
      out.write("        <nav>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#main\">Upload</a></li>\n");
      out.write("                <li><a href=\"#history\">Show History</a></li>\n");
      out.write("                <li><a href=\"#info\">Client Info</a></li>\n");
      out.write("                <li><a href=\"#contact\">Contact Us</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("    </header>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<!-- content-wrap -->\n");
      out.write("<div class=\"content-wrap\">\n");
      out.write("\n");
      out.write("    <!-- main -->\n");
      out.write("    <section id=\"main\">\n");
      out.write("            \n");
      out.write("                        \n");


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

      out.write("<div class=\"intro-box1\">\n");
      out.write("                <section id=\"login\" class=\"clearfix\">\n");
      out.write("                    <h1 align=\"center\">Login Here</h1>\n");
      out.write("            <div class=\"primary\">\n");
      out.write("<form method=\"post\" action=\"upload.jsp\" name=\"upform\"  enctype=\"multipart/form-data\" id=\"contactform\">  \n");
      out.write("   <input type=\"file\" name=\"uploadfile\" class=\"button\" >  \n");
      out.write("        <input type=\"hidden\" name=\"todo\" value=\"upload\" class=\"button\"> \n");
      out.write("        <br>\n");
      out.write("        <input type=\"submit\" name=\"Submit\" value=\"Upload\" class=\"button\">  \n");
      out.write("        <input type=\"reset\" name=\"Reset\" value=\"Cancel\" class=\"button\">  \n");
      out.write("</form> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("  \n");
      out.write("                        \n");
      out.write("            \n");
      out.write("                    \n");
      out.write("        ");

    }
        else
                   {
            out.println("File Limit Exceeded !!\n Please Delete some files and Proceed To Upload");
               }
    
      out.write("\n");
      out.write("    <a href=\"javascript:file()\"><b>View Your Files Here</b></a>\n");
      out.write("    <BR>\n");
      out.write("    <a href=\"javascript:go()\"><b>Logout</b></a>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("</section>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
