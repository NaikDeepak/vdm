<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int bid;%>
<%! String bname;%>
<%! String bdesc;%>

<html>
<body bgcolor="#FFFFE6"> 
<a href="vehicle_brand_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

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
 rs=st.executeQuery("select * from  VEHIC_BRAND_MASTER where BRAND_ID="+id);

 while(rs.next())
	 {
	  bid=rs.getInt(1);
	  bname=rs.getString(2);
	  bdesc=rs.getString(3);
	}
	%>
	<p><font size = "3" align="center" color="#660066" >Brand ID: <%=bid%> </font><BR></p>
<p><font size = "3" align="center" color="#660066">Brand Name: <%=bname%> </font><BR></p>
<p><font size = "3" align="center" color="#660066">Brand Description: <%=bdesc%> </font></p>

	 
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


