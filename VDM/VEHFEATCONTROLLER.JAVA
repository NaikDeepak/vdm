import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
public class vehfeatController extends HttpServlet 
{

public void  service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
	try
	{
		System.out.println("hai");
	Class.forName("oracle.jdbc.driver.OracleDriver");	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","ctm","ctm");
	Statement st=con.createStatement();
	String cmd =req.getParameter("submit");
	if(cmd.equals("Addnew"))
	{
        
            res.sendRedirect("vehicle_feature_insert.jsp");
			
	}
		else if(cmd.equals("View"))
		{
	      res.sendRedirect("vehicle_feature_view.jsp");
		}
		else if(cmd.equals("Delete"))
		{
	      res.sendRedirect("vehicle_feature_del.jsp");
		}
	   
		}
	catch(Exception e){
	e.printStackTrace();
	}
	
}
}
