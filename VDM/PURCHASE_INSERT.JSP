<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<%! int id2=0;%>
<html>
<head>
<title>Purchase Master Form</title>
</head>
<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>
<form method="POST" action="pur_ins.jsp">  
  <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#FFFFE6">
        <p align="center"><b><font face="Verdana" size="3" color="#820082">Purchase Insert </font></b></td>
    </tr>
  </table>
   <a href="purchase_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p align="center">&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Purchase
        NO</b></font></td>
      <td width="50%"><font color="#800080"><select size="1" name="D1">
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
 rs=st.executeQuery("select max(PUR_NO) from PURCHASE_MASTER");
 while(rs.next())
{
   id=rs.getInt(1);
   id1=id+1;
   
     %>
   <option value="<%=id1%>"><%=id1%></option>
<%}
			%>
<%}
catch(Exception e)
{}
%>
        </select></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Purchase
        Date</b></font></td>
      <td width="50%"><font color="#800080"><input type="text" name="T1" size="20"></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Manufacture
        ID</b></font></td>
      <td width="50%"><select size="1" name="D2">
	  <%
	  try{
  st1=con.createStatement();
 rs1=st1.executeQuery("select * from VEHICLE_MANUFA_MASTER");
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
      <td width="50%" align="right">&nbsp;        
        <p>&nbsp;</p>
        <p><font face="Verdana" size="2"><b><input type="submit" value="Insert" name="submit" style="color: #800080"></b></font></td>
      <td width="50%">&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>