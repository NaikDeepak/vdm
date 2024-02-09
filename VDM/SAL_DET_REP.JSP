<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int sid;%>
<%! int fid;%>
<%! int fcost;%>
<%! int fqty;%>


<html>
<body bgcolor="#FFFFE6"> 
<a href="sales_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

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
 rs=st.executeQuery("select * from SALES_DETAILS where SALE_NO="+id);

 while(rs.next())
	 {
	  sid=rs.getInt(1);
	  fid=rs.getInt(2);
	  fcost=rs.getInt(3);
	  fqty=rs.getInt(4);
	}

	%>
	<center><p><font size = "3" align="center" color="#660066" >Sales NO: <%=sid%> </font><BR></p></center>
<center><p><font size = "3" align="center" color="#660066">Feature ID: <%=fid%> </font><BR></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Feature Cost: <%=fcost%> </font></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Feature Quantity: <%=fqty%> </font></p></center>
<%}

catch(Exception e)
{}
finally
{
st.close();
rs.close();
con.close();
}
%>
	
</body>
</html>


