<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<html>
<body bgcolor="#FFFFE6">  
  <a href="purchase_details_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
 <%
 String id1=request.getParameter("D1");
  id=Integer.parseInt(id1);
   Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
	
 try{
	 

 Class.forName("oracle.jdbc.driver.OracleDriver");
  con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
   rs=st.executeQuery("delete from PURCHASE_DETAILS where PURCHASE_NO="+id);

	%>
		<BR><BR><BR><BR>
		<p>
	<center><font size = "3" align="center" color="#660066">Your account is deleted: <%=id%> </font></center><BR></p>
   
<%}

catch(NumberFormatException e)
{}
finally
{
	con.close();
}

%>
	
</body>
</html>


