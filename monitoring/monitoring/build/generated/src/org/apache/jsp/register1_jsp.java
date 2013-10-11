package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>DATABASE ADMIN REGISTRATION</title>\n");
      out.write(" \t\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/design.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/home.css\">\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/regform.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/button.css\">    \n");
      out.write("    <script type=\"text/javascript\" src=\"js/min1.js\"></script>\n");
      out.write("    <script type=\"text/javascript\" src=\"js/min.js\"></script>\n");
      out.write("    \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("\t$(document).ready(function() {  \n");
      out.write("\t\t$('a.link').click(function () {  \n");
      out.write("\t\t\t$('#wrapper').scrollTo($(this).attr('href'), 800);\n");
      out.write("\t\t\tsetPosition($(this).attr('href'), '#cloud1', '0px', '400px', '800px', '1200px')\n");
      out.write("\t\t\tsetPosition($(this).attr('href'), '#cloud2', '0px', '800px', '1600px', '2400px')\n");
      out.write("\t\t\t$('a.link').removeClass('selected');  \n");
      out.write("\t\t\t$(this).addClass('selected');\n");
      out.write("\t\t\treturn false;  \n");
      out.write("\t\t});  \n");
      out.write("\t});\n");
      out.write("\tfunction setPosition(check, div, p1, p2, p3, p4) {\n");
      out.write("\tif(check==='#box1')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p1, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse if(check==='#box2')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p2, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse if(check==='#box3')\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p3, 800);\n");
      out.write("\t\t}\n");
      out.write("\telse\n");
      out.write("\t\t{\n");
      out.write("\t\t\t$(div).scrollTo(p4, 800);\n");
      out.write("\t\t}\n");
      out.write("\t};\n");
      out.write("\t</script>\n");
      out.write("        <script>\n");
      out.write("            {\n");
      out.write("                function validateForm()\n");
      out.write("{\n");
      out.write("var x=document.forms[\"register\"][\"fname\"].value;\n");
      out.write("if (x==null || x==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"First name cannot be empty\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("  var x=document.forms[\"register\"][\"lname\"].value;\n");
      out.write("if (x==null || x==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"Last name cannot be empty\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("  var x=document.forms[\"register\"][\"mobno\"].value;\n");
      out.write("if (x==null || x==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"Mobile Number cannot be empty\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("  var x=document.forms[\"register\"][\"name\"].value;\n");
      out.write("if (x==null || x==\"\")\n");
      out.write("  {\n");
      out.write("  alert(\"Username Cannot be Empty\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("    var x=document.forms[\"register\"][\"passwd\"].value;\n");
      out.write("    var y=document.forms[\"register\"][\"passwd1\"].value;\n");
      out.write("if ((x==null || x==\"\")||(y==null || y==\"\"))\n");
      out.write("  {\n");
      out.write("  alert(\"Password Cannot be Empty\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("  var x=document.forms[\"register\"][\"passwd\"].value;\n");
      out.write("  var y=document.forms[\"register\"][\"passwd1\"].value;\n");
      out.write("if (x!=y)\n");
      out.write("  {\n");
      out.write("  alert(\"Password Mismatch\");\n");
      out.write("  return false;\n");
      out.write("  }\n");
      out.write("  \n");
      out.write("}\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div id=\"cloud1\" class=\"clouds\">\n");
      out.write("    \t<div id=\"clouds-small\"></div>\n");
      out.write("    </div><!-- end clouds -->\n");
      out.write("    <div id=\"cloud2\" class=\"clouds\">\n");
      out.write("        <div id=\"clouds-big\"></div>\n");
      out.write("    </div><!-- end clouds -->\n");
      out.write("\t<div id=\"header\">\n");
      out.write("   \t\t<h1 id=\"logo\"> Clouds</h1>\n");
      out.write("    \t\n");
      out.write("           \n");
      out.write("     \n");
      out.write("</div><!-- end header -->\n");
      out.write("\t<div id=\"wrapper\">\n");
      out.write("    \t<ul id=\"mask\">\n");
      out.write("        \t<li id=\"box1\" class=\"box\">\n");
      out.write("            \t<a name=\"box1\"></a>\n");
      out.write("                <div class=\"content\"><div class=\"inner\">\n");
      out.write("                         <div class=\"reghead\">\n");
      out.write("                        <center>\n");
      out.write("                            SHIELD Registration </center></div>\n");
      out.write("                          ");

String as=(String)session.getAttribute("as"); 
out.println(as);
if(as==null)
{
    response.sendRedirect("index.jsp");
}                         

      out.write("\n");
      out.write("                             <FORM name=\"register\" action=\"register\" method=\"POST\" onsubmit=\"return validateForm()\">\n");
      out.write("                                 <center><TABLE class=\"reg\">\n");
      out.write("         <TR>\n");
      out.write("              <TH width=\"50%\">FIRST NAME</TH>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"text\" NAME=\"fname\"></TD>\n");
      out.write("         </TR>\n");
      out.write("      <TR>\n");
      out.write("             <TH width=\"50%\"><br>LAST NAME</TH>\n");
      out.write("                 <TD width=\"50%\"><INPUT TYPE=\"text\" NAME=\"lname\"></TD>\n");
      out.write("          </TR>\n");
      out.write("          <TR>\n");
      out.write("             <TH width=\"50%\"><br>MOBILE NO</TH>\n");
      out.write("             <TD width=\"50%\"><INPUT TYPE=\"text\" NAME=\"mobno\" value=\"+91-\"></TD>\n");
      out.write("          </TR>\n");
      out.write("          <TR>\n");
      out.write("              <TH width=\"50%\"><br>USER NAME</TH>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"text\" NAME=\"name\"></TD>\n");
      out.write("         </TR>\n");
      out.write("         <TR>\n");
      out.write("              <TH width=\"50%\"><br>EMAIL</TH>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"text\" NAME=\"mail\"></TD>\n");
      out.write("         </TR>\n");
      out.write("         <TR>\n");
      out.write("              <TH width=\"50%\"><br>PASSWORD</TH>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"password\" NAME=\"passwd\"></TD>\n");
      out.write("         </TR>\n");
      out.write("          <TR>\n");
      out.write("              <TH width=\"50%\"><br>RETYPE PASSWORD</TH>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"password\" NAME=\"passwd1\"></TD>\n");
      out.write("         </TR>                  <TR>\n");
      out.write("              <TH>\n");
      out.write("                  \n");
      out.write("              </TH>\n");
      out.write("         <br>\n");
      out.write("                  <TD width=\"50%\"><INPUT TYPE=\"submit\" VALUE=\"SUBMIT\"></TD>\n");
      out.write("          </TR>\n");
      out.write("          </TABLE>    </center>                                        \n");
      out.write("                  \n");
      out.write("                                                 \n");
      out.write("\t</FORM>\t\n");
      out.write("                   <center>       \n");
      out.write("                       <br><div class=\"regfotter\">  \n");
      out.write("                           Headed here Wrongly ???<br> Go back to <a href=\"index.jsp\">Login Page</a><br></center></div>\n");
      out.write("                        \n");
      out.write("           </div>         </div>\n");
      out.write("               \n");
      out.write("            </li><!-- end box1 -->\n");
      out.write("           \n");
      out.write("        </ul><!-- end mask -->\n");
      out.write("    </div><!-- end wrapper -->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("    ");
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
