<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>
<%! int  id=0;%>
<%! int id1=0;%>

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

<form method="POST" action="DeptInsert.jsp">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font color="#FFFFE6"><font face="Verdana" size="2">Department
        In</font></font><font face="Verdana" color="#FFFFE6" size="2">formation Form</font></b></td>
    </tr>
  </table>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="Depart_master_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Department Id</font></td>
        <td width="50%"><select size="1" name="d_id">
  <%
try{
	System.out.println("in insert try");

	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 System.out.println("driver invoked");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println("connection established"+con);
  st=con.createStatement();
  System.out.println("statement created"+st);
 rs=st.executeQuery("select max( DEPARTMENT_ID) from DEPARTMENT_MASTER");
 System.out.println("Resultset"+rs);
 while(rs.next())
{
   id=rs.getInt(1);
   id1=id+1;

    %>
   <option value="<%=id1%>"><%=id1%></option>
<%}
		
  }
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
        <td width="50%" align="right"><font color="#820082" size="1">Department Name</font></td>
        <td width="50%"><input type="text" name="d_name" size="20"></td>
      </tr>
	  <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Department Description</font></td>
        <td width="50%"><input type="text" name="desc" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Department
          Highest Designation Id</font> </td>
        <td width="50%"><select size="1" name="desig_id">
		<%
try{
	System.out.println("in insert try");

  st1=con.createStatement();
  System.out.println("statement created"+st1);
 rs1=st1.executeQuery("select DESIG_ID from DESIGNATION_MASTER");
 System.out.println("Resultset"+rs1);
 while(rs1.next())
{
   id=rs1.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			
}
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
