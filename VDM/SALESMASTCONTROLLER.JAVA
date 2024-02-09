import	java.io.*;
import	java.sql.*;
import	javax.servlet.*;
import	javax.servlet.http.*;
public class SalesMastController extends HttpServlet
{

public void  service(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
	
	
	String cmd =req.getParameter("submit");
	System.out.println(cmd);
	if(cmd.equals("AddNew"))
	{
        System.out.println("from ");
         res.sendRedirect("sales_mast_int.jsp");

			 System.out.println("after redirection ");
	}
	else if(cmd.equals("View"))

		{
			 System.out.println("from ");
        
	      res.sendRedirect("sales_mast_view.jsp");
		}
	   else if(cmd.equals("Delete"))
		{
		    System.out.println("from ");
        
	      res.sendRedirect("sales_mast_delete.jsp");
		}
		else if(cmd.equals("Update"))
		{
		    System.out.println("from ");
        
	      res.sendRedirect("sales_mast_update.jsp");
		}
	
}
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             