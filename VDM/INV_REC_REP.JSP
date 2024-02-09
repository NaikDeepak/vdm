<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int vid;%>
<%! int pid;%>
<%! int vcno;%>
<%! int vchno;%>
<%! String vbmake;%>
<%! int vbno;%>


<html>
<body bgcolor="#FFFFE6"> 
<a href="inventery_record_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

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
 rs=st.executeQuery("select * from  INVENTORY_RECORD_MAST where VEH_ID="+id);

 while(rs.next())
	 {
	  vid=rs.getInt(1);
	  pid=rs.getInt(2);
	  vcno=rs.getInt(3);
	  vchno=rs.getInt(4);
	  vbmake=rs.getString(5);
	  vbno=rs.getInt(6);
	}
	%>
	<center><p><font size = "3" align="center" color="#660066" >Vehicle NO: <%=vid%> </font><BR></p></center>
<center><p><font size = "3" align="center" color="#660066">Purchase Number: <%=pid%> </font><BR></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Vehicle Carburate NO: <%=vcno%> </font></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Vehicle Chasis NO: <%=vchno%> </font></p></center>
<center><p><font size = "3" align="center" color="#660066">Vehicle Battery Make: <%=vbmake%> </font></p></center>
<center><p><font size = "3" align="center" color="#660066">Vehicle BAttery NO: <%=vbno%> </font></p></center>
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


