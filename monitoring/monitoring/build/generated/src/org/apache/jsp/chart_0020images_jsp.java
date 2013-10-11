package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;
import java.util.*;

public final class chart_0020images_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(" \n");
      out.write("<HTML>\n");
      out.write(" <table border=\"1\">\n");
      out.write(" <tr><th>USAGE</th><th>CHART</th></tr>\n");
      out.write("   ");

  try{      
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","");
    Statement stmt=con.createStatement();
    String strQuery = "select * from image";
    ResultSet rs = stmt.executeQuery(strQuery);
    while(rs.next()){
       
      out.write("\n");
      out.write("      <tr>\n");
      out.write("          <td>\n");
      out.write("              \n");
      out.write("              <table border=\"1\">\n");
      out.write("                  <tr><th>TEXT CONVERSION</th>\n");
      out.write("                      <th>RTF CONVERSION</th>\n");
      out.write("                      <th>HTML CONVERSION</th>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                      <td>\n");
      out.write("                          213\n");
      out.write("                      </td>\n");
      out.write("                      <td>\n");
      out.write("                          23\n");
      out.write("                      </td>\n");
      out.write("                      <td>\n");
      out.write("                          23\n");
      out.write("                      </td>\n");
      out.write("                  </tr>\n");
      out.write("              </table>    \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("      </td>\n");
      out.write("      <td>\n");
      out.write("          <img src=\"E:/image/bar.png\" width=\"400\" height=\"500\">\n");
      out.write("</a></td>\n");
      out.write("      </tr>\n");
      out.write("      ");

    }
    rs.close();
    con.close();
    stmt.close();
  }
  catch(Exception e)
  {
    e.getMessage();
  }
  response.setHeader("Refresh","1");
response.setHeader("Cache-Control", "no-cache");
  
      out.write("\n");
      out.write(" </table>\n");
      out.write("</HTML>");
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
