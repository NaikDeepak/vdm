import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
public class dmController extends HttpServlet 
{

public void  service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
	try
	{
		System.out.println("hai");
	Class.forName("oracle.jdbc.driver.OracleDriver");	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	Statement st=con.createStatement();
	String cmd =req.getParameter("submit");
	if(cmd.equals("Addnew"))
	{
        
            res.sendRedirect("dealer_manufacture_insert.jsp");
			
	}
		else if(cmd.equals("View"))
		{
	      res.sendRedirect("dealer_manufacture_view.jsp");
		}
		else if(cmd.equals("Delete"))
		{
	      res.sendRedirect("dealer_manufacture_delete.jsp");
		}
	   
		}
	catch(Exception e){
	e.printStackTrace();
	}
	
}
}
