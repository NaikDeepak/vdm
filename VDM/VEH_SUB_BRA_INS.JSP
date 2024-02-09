<%@  page   import="java.sql.*"  %>
<%@ page  import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">  
 <a href="vehicle_sub_brand_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

<%
	Connection conn;
	conn=null;	
	   String sbid=request.getParameter("D1");	
	    String bid=request.getParameter("D2");	
	    String ldate=request.getParameter("T1");
		 String sdesc=request.getParameter("S1");
		 String sbname=request.getParameter("T2");		 
		 int scapacity=Integer.parseInt(request.getParameter("T3"));
		 int bcost=Integer.parseInt(request.getParameter("T4"));
		 int nogears=Integer.parseInt(request.getParameter("T5"));
		 int isbid=Integer.parseInt(sbid);
		 int ibid=Integer.parseInt(bid);
		 try
		{
Class.forName("oracle.jdbc.driver.OracleDriver");
		conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	PreparedStatement stat=conn.prepareStatement("INSERT INTO VEHICLE_SUB_BRAND_MASTER values(?,?,?,?,?,?,?,?)");
			 stat.setInt(1,isbid);
			 stat.setInt(2,ibid);
			stat.setString(3,ldate);
			stat.setString(4,sdesc);
			stat.setString(5,sbname);
			stat.setInt(6,scapacity);
			stat.setInt(7,bcost);
			stat.setInt(8,nogears);
			stat.executeUpdate(); 
			response.sendRedirect("vehicle_sub_brand_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	

		
%>
</body>
</html>			