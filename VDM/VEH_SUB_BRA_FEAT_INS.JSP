<%@  page language="java"  import="java.sql.*"  %>
<%@ page  language="java"  import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="vehicle_sub_brand_feature_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

<%
	Connection conn;
	conn=null;	
	   String sbid=request.getParameter("D1");	
	    String fid=request.getParameter("D2");	
	    int fqty=Integer.parseInt(request.getParameter("T1"));
		  int isbid=Integer.parseInt(sbid);
		 int ifid=Integer.parseInt(fid);
		 try
		{
Class.forName("oracle.jdbc.driver.OracleDriver");
		conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	PreparedStatement stat=conn.prepareStatement("INSERT INTO VEHI_SUB_BRAND_FEAT_MASTER values(?,?,?)");
			 stat.setInt(1,isbid);
			 stat.setInt(2,ifid);
			stat.setInt(3,fqty);
			stat.executeUpdate(); 
			response.sendRedirect("vehicle_sub_brand_feature_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	

		
%>
</body>
</html>



       
	 
	 
			