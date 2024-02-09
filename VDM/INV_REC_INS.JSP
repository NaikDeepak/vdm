<%@  page  import="java.sql.*"  %>
<%@ page   import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="inventery_record_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    String vid=request.getParameter("D1");	
	     String pid=request.getParameter("D2");
		  int vcno=Integer.parseInt(request.getParameter("T1"));
		  int vchno=Integer.parseInt(request.getParameter("T2"));
		  String vbmake=request.getParameter("T3");
		  int vbno=Integer.parseInt(request.getParameter("T4"));
		 
	int ivid=Integer.parseInt(vid);
	int ipid=Integer.parseInt(pid);
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        PreparedStatement stat=conn.prepareStatement("INSERT INTO INVENTORY_RECORD_MAST values(?,?,?,?,?,?)");
			 stat.setInt(1,ivid);
			 stat.setInt(2,ipid);
			stat.setInt(3,vcno);
			stat.setInt(4,vchno);
			stat.setString(5,vbmake);
			stat.setInt(6,vbno);
			stat.executeUpdate(); 
			response.sendRedirect("inventery_record_insert.jsp");
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



       
	 
	 
			