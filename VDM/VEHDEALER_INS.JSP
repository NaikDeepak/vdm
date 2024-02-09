<%@  page   import="java.sql.*"  %>
<%@ page    import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
<a href="vehicle_dealer_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;	
	    String did=request.getParameter("D1");	
	     String dname=request.getParameter("T1");
		 String dhno=request.getParameter("T2");
		 String dstreet=request.getParameter("T3");		 
		 String dcity=request.getParameter("T5");
		 String dstate=request.getParameter("T6");
		 String dcountry=request.getParameter("T7");
		 String dzip=request.getParameter("T8");
		 String dph1=request.getParameter("T9");
		 String dph2=request.getParameter("T10");
		 String demail=request.getParameter("T11");
		 String cfname=request.getParameter("T12");
		 String cmname=request.getParameter("T13");
		 String clname=request.getParameter("T14");
		 String dcpphone=request.getParameter("T15");
		 int idid=Integer.parseInt(did);
		 int idzip=Integer.parseInt(dzip);
		 int idph1=Integer.parseInt(dph1);
		 int idph2=Integer.parseInt(dph2);
		 int idcpphone=Integer.parseInt(dcpphone);
	try
		{
Class.forName("oracle.jdbc.driver.OracleDriver");
		conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	PreparedStatement stat=conn.prepareStatement("INSERT INTO VEHICLE_DEALER_MASTER values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 stat.setInt(1,idid);
			 stat.setString(2,dname);
			stat.setString(3,dhno);
			stat.setString(4,dstreet);
			stat.setString(5,dcity);
			stat.setString(6,dstate);
			stat.setString(7,dcountry);
			stat.setInt(8,idzip);
			stat.setInt(9,idph1);
			stat.setInt(10,idph2);
			stat.setString(11,demail);
			stat.setString(12,cfname);
			stat.setString(13,cmname);
			stat.setString(14,clname);
			stat.setInt(15,idcpphone);
			stat.executeUpdate(); 
			response.sendRedirect("vehicle_dealer_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	

		
%>
</body>
</html>



       
	 
	 
			