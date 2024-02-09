<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int pid;%>
<%! int sbid;%>
<%! int pcost;%>
<%! int sbqty;%>


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
 rs=st.executeQuery("select * from  PURCHASE_DETAILS where PURCHASE_NO="+id);

 while(rs.next())
	 {
	  pid=rs.getInt(1);
	  sbid=rs.getInt(2);
	  pcost=rs.getInt(3);
	  sbqty=rs.getInt(4);
	}
	%>
	<center><p><font size = "3" align="center" color="#660066" >Purchase NO: <%=pid%> </font><BR></p></center>
<center><p><font size = "3" align="center" color="#660066">Sub Brand ID: <%=sbid%> </font><BR></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Purchase Cost: <%=pcost%> </font></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Sub Brand Quantity: <%=sbqty%> </font></p></center>
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


