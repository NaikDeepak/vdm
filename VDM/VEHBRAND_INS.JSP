<%@  page language="java"  import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
<a href="vehicle_brand_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    String bid=request.getParameter("D1");	
	     String bname=request.getParameter("T1");
		  String bdesc=request.getParameter("S1");
 		 
	int ibid=Integer.parseInt(bid);
	try
		{
Class.forName("oracle.jdbc.driver.OracleDriver");
		conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	PreparedStatement stat=conn.prepareStatement("INSERT INTO VEHIC_BRAND_MASTER values(?,?,?)");
			 stat.setInt(1,ibid);
			 stat.setString(2,bname);
			stat.setString(3,bdesc);
			stat.executeUpdate(); 
			response.sendRedirect("vehicle_brand_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	

		
%>
</body>
</html>



       
	 
	 
			