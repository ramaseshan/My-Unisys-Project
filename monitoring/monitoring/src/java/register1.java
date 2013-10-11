import javax.servlet.annotation.WebServlet;
import java.sql.*;
import java.io.*;
import java.util.Properties;
import javax.servlet.*;
import javax.servlet.http.*;
@WebServlet(name = "register1", urlPatterns = {"/register1"})
public class register1 extends HttpServlet {
Connection theConnection;
public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{}
public void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException
{
     
res.setContentType("text/html");
    
PrintWriter out = res.getWriter();
String fname = req.getParameter("fname");
String lname = req.getParameter("lname");
String mobno = req.getParameter("mobno");
String uname = req.getParameter("name");
String mail= req.getParameter("mail");
String passwd = req.getParameter("passwd");
//String passwd1 = req.getParameter("passwd1");
 
 
 //out.println(passwd+"   "+passwd1);
try{
    
             Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        

    out.println("<br><h2>Username: "+uname);
Class.forName(prop.getProperty("driver"));
theConnection = DriverManager.getConnection(prop.getProperty("connurl"),prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=theConnection.createStatement();
Statement St=theConnection.createStatement();

  
int val = St.executeUpdate("INSERT INTO `clientinfo`(`firstname`, `lastname`, `mobile`, `username`, `email`, `password`,ugroup) VALUES('"+fname+"','"+lname+"',"+mobno+",'"+uname+"','"+mail+"',MD5('"+passwd+"'),'d')");
out.println("<h1>Registration succesfull");
//out.println("<br><h2>Your Username="+lname);
//out.println("<br><h2>Your Password="+passwd);

theStatement.close();
St.close();
theConnection.close();
}
 
catch(Exception e){
out.println(e.getMessage());
}

 


 
			out.println(" Registration successful");
                      ServletContext context= getServletContext();
RequestDispatcher rd= context.getRequestDispatcher("/index.jsp");
rd.include(req, res);
		
	
}
}
