<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0;%>
<html>
<head>
<title>Vehicle Sub Brand Master</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="veh_sub_bra_res.jsp">  
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="100%">
          <p align="center"><font face="Verdana" size="3" color="#660066"><b>Vehicle Sub Brand
          View</b></font></td>
      </tr>
    </table>
    </center>
  </div>
   <a href="vehicle_sub_brand_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2"  color="#660066"><b>Sub Brand ID</b></font></td>
        <td width="50%"><select size="1" name="D1">
		   <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from VEHICLE_SUB_BRAND_MASTER");
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
	  
        <td width="50%" align="right">
		<p>&nbsp;</p><input type="submit" value="View" name="submit" style="color: #660066"></td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div>
    <p>&nbsp;</p>
</form>

</body>

</html>
