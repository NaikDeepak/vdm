<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<html>
<head>
<title>Vehicle Dealer Master</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="vehdealer_del.jsp">
    <div align="center">
    <center>
     <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle
        Dealer Delete</font></b></td>
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
        <td width="50%" align="right">&nbsp;
          <p>&nbsp;</p>
          <p>&nbsp;</p>          
          <p><input type="submit" value="Delete" name="submit" style="color: #800080"></p>
        </td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div> 
  <p>&nbsp;</p>
</form>

</body>

</html>
