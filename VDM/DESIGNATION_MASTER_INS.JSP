<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>
<%! int  id=0;%>
<%! int id1=0;%>
<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>
<html>
<head>
<title>Vehicle Brand Master</title>
</head>
<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>
<form method="POST" action="DesigMastInsert.jsp"> 
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Designation
          Information Form</font></b></p>
        </td>
      </tr>
    </table>
    </center>
  </div>
  <font color="#820082" size="1"><a href="designation_home.jsp">Back</a></font>
  <div align="right">
    <table border="0" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          </td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Designation
          Id</font></td>
        <td width="50%"><select size="1" name="did">


	  <%
try{
	System.out.println("in insert try");

	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 System.out.println("driver invoked");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println("connection established"+con);
  st=con.createStatement();
  System.out.println("statement created"+st);
 rs=st.executeQuery("select max( DESIG_ID) from DESIGNATION_MASTER");
 System.out.println("Resultset"+rs);
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
        <td width="50%" align="right"><font color="#820082" size="1">Designation Name</font></td>
        <td width="50%"><input type="text" name="dname" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Designation
          Description</font> </td>
        <td width="50%"><textarea rows="2" name="desc" cols="20"></textarea></td>
      </tr>
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right"><input type="submit" value="Insert" name="submit" style="color: #660066"></td>
      <center>
      <td width="50%"></td>
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
