<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>

<%! int  id=0;%>
<%! int id1=0;%>
<%! int  id5=0;%>



<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="FuelSysMastView.jsp">
  
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6" height="63">
      <tr>
      <td width="100%" bgcolor="#820082" height="32">
        <p align="center"><font face="Verdana" color="#FFFFE6" size="2">Fuel
        System Information</font></p>
      </td>
      </tr>
      <tr>
        <td width="100%" height="19">
          <p align="right"><font color="#820082" size="1"><a href="fuel_sys_master_home.jsp">Back</a></font>
        <p>&nbsp;
        </td>
      </tr>
    </table>
    </center>
  </div>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          &nbsp;</td>
      </tr>
    </table>
  </div>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel System
          Id</font></td>
        <td width="50%"><select size="1" name="f_id">
		<%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select FUEL_SYS_ID from FUEL_SYS_MASTER");
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
	con.close();
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right">&nbsp;</td>
      <center>
      <td width="50%"><input type="submit" value="Search" name="submit" style="color: #660066"></td>
      </tr>
    </table>
    </center>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>

</body>

</html>
