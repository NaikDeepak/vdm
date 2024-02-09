<%@  page  import="java.sql.*"  %>
<%@ page   import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="dealer_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    String did=request.getParameter("D1");	
	     String mid=request.getParameter("D2");
		  String dsdate=request.getParameter("T1");
		  String dedate=request.getParameter("T2");
		 
	int idid=Integer.parseInt(did);
	int imid=Integer.parseInt(mid);
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        PreparedStatement stat=conn.prepareStatement("INSERT INTO DEALER_MANU_MASTER values(?,?,?,?)");
			 stat.setInt(1,idid);
			 stat.setInt(2,imid);
			stat.setString(3,dsdate);
			stat.setString(4,dedate);
			stat.executeUpdate(); 
			response.sendRedirect("dealer_manufacture_insert.jsp");
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



       
	 
	 
			