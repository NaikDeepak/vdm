<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int did;%>
<%! int mid;%>
<%! String dcsdate;%>
<%! String dcedate;%>


<html>
<body bgcolor="#FFFFE6"> 
<a href="dealer_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

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
 rs=st.executeQuery("select * from  DEALER_MANU_MASTER where DEALER_ID="+id);

 while(rs.next())
	 {
	  did=rs.getInt(1);
	  mid=rs.getInt(2);
	  dcsdate=rs.getString(3);
	  dcedate=rs.getString(4);
	}
	%>
	<center><p><font size = "3" align="center" color="#660066" >Dealer ID: <%=did%> </font><BR></p></center>
<center><p><font size = "3" align="center" color="#660066">Manufacture ID: <%=mid%> </font><BR></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Dealer Contract Start Date: <%=dcsdate%> </font></p>
		</center>
<center><p><font size = "3" align="center" color="#660066">Dealer Contract End Date: <%=dcedate%> </font></p></center>
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


