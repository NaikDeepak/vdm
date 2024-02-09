<%@  page   import="java.sql.*"  %>
<%@ page   import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="purchase_details_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    String pid=request.getParameter("D1");	
	     String sbid=request.getParameter("D2");
		  int pcost=Integer.parseInt(request.getParameter("T1"));
		  int sbqty=Integer.parseInt(request.getParameter("T2"));
		 
	int ipid=Integer.parseInt(pid);
	int isbid=Integer.parseInt(sbid);
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        PreparedStatement stat=conn.prepareStatement("INSERT INTO PURCHASE_DETAILS values(?,?,?,?)");
			 stat.setInt(1,ipid);
			 stat.setInt(2,isbid);
			stat.setInt(3,pcost);
			stat.setInt(4,sbqty);
			stat.executeUpdate(); 
			response.sendRedirect("purchase_details_insert.jsp");
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



       
	 
	 
			