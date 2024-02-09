import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
public class vehsfControler extends HttpServlet 
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
	System.out.println(cmd);
	if(cmd.equals("Addnew"))
	{
		System.out.println("i am in addnew");
        
            res.sendRedirect("vehicle_sub_brand_feature_insert.jsp");
			
	}
		else if(cmd.equals("View"))
		{
	      res.sendRedirect("vehicle_sub_brand_feature_view.jsp");
		}
		else if(cmd.equals("Delete"))
		{
	      res.sendRedirect("vehicle_sub_brand_feature_del.jsp");
		}
		else if(cmd.equals("Update"))
		{
	      res.sendRedirect("vehicle_sub_brand_feature_update.jsp");
		}
	   
		}
	catch(Exception e){
	e.printStackTrace();
	}
	
}
}
