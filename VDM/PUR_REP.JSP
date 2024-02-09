<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int pid;%>
<%! String pdate;%>
<%! int mid;%>

<html>
<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0> 
<table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#FFFFE6">
        <p align="center"><b><font face="Verdana" size="3" color="#820082">Purchase Report</font></b></td>
    </tr>
  </table>
<a href="purchase_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

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
 rs=st.executeQuery("select * from  PURCHASE_MASTER where PUR_NO="+id);

 while(rs.next())
	 {
	  pid=rs.getInt(1);
	  pdate=rs.getString(2);
	  mid=rs.getInt(3);
	}
	%>
	<p><center><font size = "3" align="center" color="#660066" >Purchase ID: <%=pid%> </font></center><BR></p>
<p><center><font size = "3" align="center" color="#660066">Purchase Description: <%=pdate%> </font></center><BR></p>
<p><center><font size = "3" align="center" color="#660066">Manufacture ID: <%=mid%> </font></center></p>

	 
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


