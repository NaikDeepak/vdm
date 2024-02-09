<%@  page language="java"  import="java.sql.*"  %>
<%@ page  language="java"  import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="sales_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    String sid=request.getParameter("D1");	
	     String fid=request.getParameter("D2");
		int fcost=Integer.parseInt(request.getParameter("T1"));
		int fqty=Integer.parseInt(request.getParameter("T2"));
		 
	int isid=Integer.parseInt(sid);
	int ifid=Integer.parseInt(fid);
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        PreparedStatement stat=conn.prepareStatement("INSERT INTO SALES_DETAILS values(?,?,?,?)");
			 stat.setInt(1,isid);
			 stat.setInt(2,ifid);
			stat.setInt(3,fcost);
			stat.setInt(4,fqty);
			stat.executeUpdate(); 
			response.sendRedirect("sales_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}
		finally
{
	conn.close();
}


		
%>
</body>
</html>



       
	 
	 
			