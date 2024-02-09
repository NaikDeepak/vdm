<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<html>
<head>
<title>Dealer Manufacture Insert</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="dea_manu_ins.jsp"> 
  <div align="center">
    <center>
   <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Dealer Manufacture  Insert </font></b></td>
    </tr>
  </table>
    </center>
  </div>
  <a href="dealer_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font size="2" face="Verdana" color="#660066"><b>Dealer ID</b></font></td>
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
 rs=st.executeQuery("select * from VEHICLE_DEALER_MASTER");
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
        <td width="50%" align="right"><font size="2" face="Verdana" color="#660066"><b>Manufacture
          ID</b></font></td>
        <td width="50%"><select size="1" name="D2">
		 <%     
	  try{ 
  st1=con.createStatement();
 rs1=st1.executeQuery("select * from VEHICLE_MANUFA_MASTER");
 while(rs1.next())
{
   id1=rs1.getInt(1);
     %>
   <option value="<%=id1%>"><%=id1%></option>
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
        <td width="50%" align="right"><font size="2" face="Verdana" color="#660066"><b>Dealer
          Contract Start Date</b></font></td>
        <td width="50%"><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font size="2" face="Verdana" color="#660066"><b>Dealer
          Contract End Date</b></font></td>
        <td width="50%"><input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right">&nbsp;
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p><font size="2" face="Verdana" color="#660066"><b><input type="submit" value="Insert" name="submit" style="color: #660066;></b></font></td>
        <td width="50%"></p>
          </td>
      </tr>
    </table>
    </center>
  </div>
    <p>&nbsp;</p>
</form>

</body>

</html>
