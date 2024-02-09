<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int sid=0; %>
<%! int fid=0; %>
<%! int fcost=0; %>
<%! int fqty=0; %>
<html>
<head>
<title>Sales Update Details</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="sal_det_result1.jsp">
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font size="3" face="Verdana" color="#FFFFE6">Sales
        Insert Details</font></b></td>
    </tr>
  </table>
  <a href="sales_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Sale
        NO</font></b></td>
      <td width="50%"><select size="1" name="D1">
<%
      Connection con=null;
	  Statement st=null;
	  ResultSet rs=null;
	 sid=Integer.parseInt(request.getParameter("D1"));
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from SALES_DETAILS where SALE_NO ="+sid);
 while(rs.next())
{
   id=rs.getInt(1);
   fid=rs.getInt(2);
   fcost=rs.getInt(3);
   fqty=rs.getInt(4);
}
  
       %>
   <option><%=id%></option>
<%}
catch(Exception e)
{}
finally
{
	con.close();
}
%>
        </select></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Feature
        ID</font></b></td>
      <td width="50%"><select size="1" name="D2">
   <option><%=fid%></option>
        </select></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Feature
        Cost</font></b></td>
      <td width="50%"><input type="text" name="T1" size="20" value="<%=fcost%>"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Feature
        Qty</font></b></td>
      <td width="50%"><input type="text" name="T2" size="20" value="<%=fqty%>"></td>
    </tr>
    <tr>
      <td width="50%" align="right">&nbsp;
        <p><b><font size="2" face="Verdana" color="#800080"><input type="submit" value="Update" name="submit" style="color: #800080"></font></b></td>
      <td width="50%"></td>
    </tr>
  </table>
</form>

</body>

</html>
