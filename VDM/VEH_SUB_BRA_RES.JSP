<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int sbid;%>
<%! int bid;%>
<%! String ldate;%>
<%! String sbdesc;%>
<%! String sbname;%>
<%! int scapacity;%>
<%! int bcost;%>
<%! int ngears;%>

<html>
<body bgcolor="#FFFFE6"> 
 <a href="vehicle_sub_brand_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
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
 rs=st.executeQuery("select * from  VEHICLE_SUB_BRAND_MASTER where SUB_BRAND_ID="+id);

 while(rs.next())
	 {
	  sbid=rs.getInt(1);
  	  bid=rs.getInt(1);
	  ldate=rs.getString(2);
	  sbdesc=rs.getString(3);
	  sbname=rs.getString(3);
	  scapacity=rs.getInt(1);
	  bcost=rs.getInt(1);
	  ngears=rs.getInt(1);
	}
	%>
	<p><center><font size = "3" align="center" color="#660066" >Sub Brand ID: <%=sbid%> </center></font><BR></p>
    <p><center><font size = "3" align="center" color="#660066">Brand ID: <%=bid%></center> </font><BR></p>
    <p><center><font size = "3" align="center" color="#660066">Lanched Date: <%=ldate%></center> </font></p>
	<p><center><font size = "3" align="center" color="#660066" >Sub Brand Name: <%=sbname%> </center></font><BR></p>
    <p><center><font size = "3" align="center" color="#660066">Sub Brand Description: <%=sbdesc%> </center></font><BR></p>
    <p><center><font size = "3" align="center" color="#660066">Seating Capacity: <%=scapacity%> </center></font></p>
	<p><center><font size = "3" align="center" color="#660066" >Brand Cost: <%=bcost%> </font></center><BR></p>
    <p><center><font size = "3" align="center" color="#660066">NO OF Gears: <%=ngears%> </font>
		</center><BR></p>


	 
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


