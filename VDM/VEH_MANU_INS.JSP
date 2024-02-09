<%@  page  import="java.sql.*"  %>
<%@ page  import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<a href="vehicle_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

<%
	Connection conn;
	conn=null;
	    int mid=Integer.parseInt(request.getParameter("D1"));	
	     String mname=request.getParameter("T1");
		  String hno=request.getParameter("T2");
		  String street=request.getParameter("T3");
	     String city=request.getParameter("T4");
		  String state=request.getParameter("T5");
		  String country=request.getParameter("T6");
	      int zip=Integer.parseInt(request.getParameter("T7"));
		  int ph1=Integer.parseInt(request.getParameter("T8"));
		  int ph2=Integer.parseInt(request.getParameter("T9"));
	      int fax=Integer.parseInt(request.getParameter("T10"));
		  String email=request.getParameter("T11");
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        PreparedStatement stat=conn.prepareStatement("INSERT INTO VEHICLE_MANUFA_MASTER values(?,?,?,?,?,?,?,?,?,?,?,?)");
			stat.setInt(1,mid);
			 stat.setString(2,mname);
			stat.setString(3,hno);
			stat.setString(4,street);
			 stat.setString(5,city);
			stat.setString(6,state);
			stat.setString(7,country);
			 stat.setInt(8,zip);
			 stat.setInt(9,ph1);
			 stat.setInt(10,ph2);
			 stat.setInt(11,fax);
			stat.setString(12,email);
			stat.executeUpdate(); 
			response.sendRedirect("vehicle_manufacture_insert.jsp");
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



       
	 
	 
			