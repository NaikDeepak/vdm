<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id1=0; %>
<%! int id2=0; %>
<html>
<head>
<title>Vehicle Sub Brand Master</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="veh_sub_bra_ins.jsp">  
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="100%">
          <p align="center"><font face="Verdana" size="3" color="#820082"><b>Vehicle Sub Brand
          Master</b></font></td>
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
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Sub Brand ID</b></font></td>
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
 rs=st.executeQuery("select max(SUB_BRAND_ID) from VEHICLE_SUB_BRAND_MASTER");
 while(rs.next())
{

   id=rs.getInt(1);
   System.out.println(id);
   id1=id+1;
     %>
   <option value="<%=id1%>"><%=id1%></option>
<%}
			
}
catch(Exception e)
{}
%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Brand ID</b></font></td>
        <td width="50%"><select size="1" name="D2">
		   <%
	  try{
	 
 st1=con.createStatement();
 rs1=st1.executeQuery("select * from VEHIC_BRAND_MASTER");
 while(rs1.next())
{
   id2=rs1.getInt(1);
     %>
   <option value="<%=id2%>"><%=id2%></option>
<%}
			
}
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
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Launched Date</b></font></td>
        <td width="50%"><input type="text" name="T1" size="20" ></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Sub Brand&nbsp; Desc</b></font></td>
        <td width="50%"><textarea rows="2" name="S1" cols="20"></textarea></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Sub Brand Name</b></font></td>
        <td width="50%"><input type="text" name="T2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Seating Capacity</b></font></td>
        <td width="50%"><input type="text" name="T3" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>Brand Cost</b></font></td>
        <td width="50%"><input type="text" name="T4" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082"><b>No Of Gears</b></font></td>
        <td width="50%"><input type="text" name="T5" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><input type="submit" value="Insert" name="submit" ></td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div>
    <p>&nbsp;</p>
</form>

</body>

</html>
