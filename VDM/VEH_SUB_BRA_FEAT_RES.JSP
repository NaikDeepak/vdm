<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int sbid;%>
<%! int fid;%>
<%! int fqty;%>

<html>
<body bgcolor="#FFFFE6"> 

<table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle Sub Brand 
        Feature Insert</font></b></td>
    </tr>
  </table>
<a href="vehicle_sub_brand_feature_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>

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
 rs=st.executeQuery("select * from  VEHI_SUB_BRAND_FEAT_MASTER where SUB_BRAND_ID="+id);

 while(rs.next())
	 {
	  sbid=rs.getInt(1);
	  fid=rs.getInt(2);
	  fqty=rs.getInt(3);
	}
	%>
		<BR><BR><BR>
	<p><center><font size = "3" align="center" color="#660066" >Sub Brand ID: <%=sbid%> </font></center><BR></p>
    <p><center><font size = "3" align="center" color="#660066">Feature ID: <%=fid%> </font></center><BR></p>
    <p><center><font size = "3" align="center" color="#660066">feature Quantity: <%=fqty%> </font></center></p>
		 
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


