<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<html>
<head>
<title>Vehicle Dealer Master</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="vehdealer_ins.jsp">
    <div align="center">
    <center>
     <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle
        Dealer Insert</font></b></td>
    </tr>
  </table>
    </center>
  </div>
  <a href="vehicle_dealer_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Dealer ID</font></td>
        <td width="50%"><select size="1" name="D1">
		 <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select max(DEALER_ID) from VEHICLE_DEALER_MASTER");
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
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Dealer Name</font></td>
        <td width="50%"><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Hno</font></td>
        <td width="50%"><input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Street</font></td>
        <td width="50%"><input type="text" name="T3" size="20"></td>
      </tr>      
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">City</font></td>
        <td width="50%"><input type="text" name="T5" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">State</font></td>
        <td width="50%"><input type="text" name="T6" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Country</font></td>
        <td width="50%"><input type="text" name="T7" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Zip</font></td>
        <td width="50%"><input type="text" name="T8" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Phone1</font></td>
        <td width="50%"><input type="text" name="T9" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Phone2</font></td>
        <td width="50%"><input type="text" name="T10" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Email ID</font></td>
        <td width="50%"><input type="text" name="T11" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Contact Person First Name</font></td>
        <td width="50%"><input type="text" name="T12" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Contact Person Middle Name</font></td>
        <td width="50%"><input type="text" name="T13" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Contact Person Last Name</font></td>
        <td width="50%"><input type="text" name="T14" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#800080">Contact Person Phone</font></td>
        <td width="50%"><input type="text" name="T15" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><input type="submit" value="Insert" name="submit" style="color: #800080"></td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div> 
  <p>&nbsp;</p>
</form>

</body>

</html>
