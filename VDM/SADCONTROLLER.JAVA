import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
public class sadController extends HttpServlet 
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
        
            res.sendRedirect("sales_insert.jsp");
			
	}
		else if(cmd.equals("View"))
		{
	      res.sendRedirect("sales_view.jsp");
		}
		else if(cmd.equals("Delete"))
		{
	      res.sendRedirect("sales_delete.jsp");
		}
		else if(cmd.equals("Update"))
		{

	      res.sendRedirect("sales_update.jsp");
		}
	   
		}
	catch(Exception e){
	e.printStackTrace();
	}
	
}
}
