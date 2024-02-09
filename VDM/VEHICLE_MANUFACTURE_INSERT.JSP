<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<html>
<head>
<title>Vehicle Manufacture Form</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="veh_manu_ins.jsp">  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <div align="center">
    <center>
    <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle Manufacture 
        Insert</font></b></td>
    </tr>
  </table>
    </center>
  </div>
  <a href="vehicle_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Manufacture
        ID</b></font></td>
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
 rs=st.executeQuery("select max(VEH_MANU_ID) from VEHICLE_MANUFA_MASTER");
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
        </select></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Manufacture
        Name</b></font></td>
      <td width="50%"><input type="text" name="T1" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>HNO</b></font></td>
      <td width="50%"><input type="text" name="T2" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Street</b></font></td>
      <td width="50%"><input type="text" name="T3" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>City</b></font></td>
      <td width="50%"><input type="text" name="T4" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>State</b></font></td>
      <td width="50%"><input type="text" name="T5" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Country</b></font></td>
      <td width="50%"><input type="text" name="T6" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Zip</b></font></td>
      <td width="50%"><input type="text" name="T7" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Phone1</b></font></td>
      <td width="50%"><input type="text" name="T8" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#800080"><b>Phone2</b></font></td>
      <td width="50%"><input type="text" name="T9" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Fax</b></font></td>
      <td width="50%"><input type="text" name="T10" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Email
        ID</b></font></td>
      <td width="50%"><input type="text" name="T11" size="20"></td>
    </tr>
    <tr>
      <td width="50%" align="right">&nbsp;
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p><font face="Verdana" size="2" color="#800080"><b><input type="submit" value="Insert" name="submit" style="color: #660066"></b></font></td>
      <td width="50%"></td>
    </tr>
  </table>  
</form>

</body>

</html>
