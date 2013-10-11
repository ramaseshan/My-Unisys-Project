import javax.servlet.annotation.WebServlet;
import java.sql.*;
import java.io.*;
import java.util.Properties;
import javax.servlet.*;
import javax.servlet.http.*;
@WebServlet(name = "register", urlPatterns = {"/register"})
public class register extends HttpServlet {
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
String passwd1 = req.getParameter("passwd1");
  
 if(passwd.equals(passwd1))
 {
 //out.println(passwd+"   "+passwd1);
try{
   Properties prop = new Properties();

      prop.load(getServletContext().getResourceAsStream("/WEB-INF/admin.properties"));
        
    
    out.println("<br><h2>Username: "+uname);
Class.forName(prop.getProperty("driver"));
theConnection = DriverManager.getConnection(prop.getProperty("connurl"),prop.getProperty("dbuser"),prop.getProperty("dbpassword"));
Statement theStatement=theConnection.createStatement();
Statement St=theConnection.createStatement();

 

if((fname!=null)&&(lname!=null)&&(mobno!=null)&&(uname!=null)&&(mail!=null)&&(passwd!=null))
{
        
int val = St.executeUpdate("INSERT INTO `clientinfo`(`firstname`, `lastname`, `mobile`, `username`, `email`, `password`,ugroup) VALUES('"+fname+"','"+lname+"','"+mobno+"','"+uname+"','"+mail+"',MD5('"+passwd+"'),'c')");

int val1 = St.executeUpdate("INSERT INTO `activitylist`(`username`) VALUES('"+uname+"')");
}

theStatement.close();
St.close();
theConnection.close();
}
catch(Exception e){
out.println(e.getMessage());
}
 File file = new File("E:\\test\\"+uname);
       File file2 = new File("E:\\test\\"+uname+"_historyfiles");
     //File file1 = new File("F:\\admin\\"+uname);
	if (!file.exists()&&!file2.exists()) {
		if (file.mkdir()&&file2.mkdir()) {
			out.println("\n\n\n\n\n\n\nRegistration Successful");
                       ServletContext context= getServletContext();
RequestDispatcher rd= context.getRequestDispatcher("/index.jsp");
rd.include(req, res);
 }
		}
        else
        {
         out.println("Username already exists");   
        }
        }
else
 {  out.println("<font color=#ff0000>");
     out.println(" Password Mismatch</font>");
     out.println("Registration failed!!");
 }
	

     
}

}