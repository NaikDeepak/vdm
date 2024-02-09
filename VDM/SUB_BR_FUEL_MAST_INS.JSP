<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>

<%! int  id=0;%>
<%! int id1=0;%>
<%! int  id5=0;%>



<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>
 <%! Statement st1=null;%>
<%!	  ResultSet rs1=null;%>
<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="SubBrdFuelMastInsert.jsp">
 
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" color="#FFFFE6" size="2">Sub
          Brand Fuel Information Form</font></b></td>
    </tr>
  </table>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="sub_br_fuel_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sub Brand Id</font></td>
        <td width="50%"><select size="1" name="sbid">
		 <%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select  SUB_BRAND_ID from VEHICLE_SUB_BRAND_MASTER");
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
try
{
	rs.close();
	st.close();
	
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel 
          Id</font></td>
        <td width="50%"><select size="1" name="fid">

		 <%
try{
	 
	//System.out.println(con);
  st1=con.createStatement();
 rs1=st1.executeQuery("select  FUEL_ID  from FUEL_MASTER");
   while(rs1.next())
{
   id=rs1.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs1.close();
	st1.close();
con.close();
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Description</font></td>
        <td width="50%"><textarea rows="2" name="desc" cols="20"></textarea></td>
      </tr>
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right">&nbsp;</td>
      <center>
      <td width="50%"><input type="submit" value="Insert" name="submit" style="color: #660066"></td>
      </tr>
    </table>
    </center>
  </div>
  
</form>

</body>

</html>
