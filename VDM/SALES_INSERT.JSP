<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<%! int id2=0; %>
<html>
<head>
<title>Sales Insert Details</title>
</head>
<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>
<form method="POST" action="sal_det_ins.jsp">
   <table border="0" width="100%">
    <tr>
      <td width="100%" bgcolor="#FFFFE6">
        <p align="center"><b><font size="3" face="Verdana" color="#820082">Sales
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
      Statement st1=null;
	  ResultSet rs1=null;
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from SALES_MASTER");
 while(rs.next())
{
   id=rs.getInt(1);
  
       %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
%>
        </select></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Feature
        ID</font></b></td>
      <td width="50%"><select size="1" name="D2">
        <%
	  try{
  st1=con.createStatement();
 rs1=st1.executeQuery("select * from VEHIC_FEATURES_MASTER");
 while(rs1.next())
{
   id2=rs1.getInt(1);
  
       %>
   <option value="<%=id2%>"><%=id2%></option>
<%}
			%>
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
        Cost</font></b></td>
      <td width="50%"><input type="text" name="T1" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font size="2" face="Verdana" color="#800080">Feature
        Qty</font></b></td>
      <td width="50%"><input type="text" name="T2" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right">&nbsp;
        <p><b><font size="2" face="Verdana" color="#800080"><input type="submit" value="Insert" name="submit" style="color: #800080"></font></b></td>
      <td width="50%"></td>
    </tr>
  </table>
</form>

</body>

</html>
