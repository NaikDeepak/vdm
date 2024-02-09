<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<html>
<head>
<title>Vehicle Feature Insert</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="vehfeat_ins.jsp">
    <div align="center">
    <center>
    <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle
        Feature Insert</font></b></td>
    </tr>
  </table>
	 
    </center>
  </div>
  <p>&nbsp;</p>
  <a href="vehicle_feature_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#660066">Feature ID</font></td>
        <td width="50%"><select size="1" name="D1">
		  <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select max(FEATURE_ID) from VEHIC_FEATURES_MASTER");
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
        <td width="50%" align="right"><font color="#660066">Feature Name</font></td>
        <td width="50%"><input type="text" name="T1" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#660066">Feature Description</font></td>
        <td width="50%"><textarea rows="2" name="S1" cols="20"></textarea></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#660066">Feature Min Price</font></td>
        <td width="50%"><input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#660066">Feature Max Price</font></td>
        <td width="50%"><input type="text" name="T3" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><input type="submit" value="Insert" name="submit" style="color: #660066"></td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div>  
</form>

</body>

</html>
