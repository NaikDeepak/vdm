<%@  page language="java"  import="java.sql.*"  %>
<%@ page import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Purchase Insert </font></b></td>
    </tr>
  </table>
<a href="purchase_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

<%
	Connection conn;
	conn=null;
	    int pid=Integer.parseInt(request.getParameter("D1"));	
	     String pdate=request.getParameter("T1");
		  int mid=Integer.parseInt(request.getParameter("D2"));	
	try
		{
Class.forName("oracle.jdbc.driver.OracleDriver");
		conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	PreparedStatement stat=conn.prepareStatement("INSERT INTO PURCHASE_MASTER values(?,?,?)");
			 stat.setInt(1,pid);
			 stat.setString(2,pdate);
			stat.setInt(3,mid);
			stat.executeUpdate(); 
			response.sendRedirect("purchase_insert.jsp");
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}	

		
%>
</body>
</html>



       
	 
	 
			