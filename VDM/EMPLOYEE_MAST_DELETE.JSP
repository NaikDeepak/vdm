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

<form method="POST" action="EmpMastDelete.jsp">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font color="#FFFFE6"><font face="Verdana" size="2">Employee
          Information Form</font></font></b></td>
    </tr>
  </table>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="employee_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="e_id">
		 <%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","ctm","ctm");

  st=con.createStatement();
 rs=st.executeQuery("select EMP_NO from EMP_MASTER");
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
        <td width="50%" height="103">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right">&nbsp;</td>
      <center>
      <td width="50%" height="103"><input type="submit" value="Delete" name="submit" style="color: #660066"></td>
      </tr>
    </table>
    </center>
  </div>
  
</form>

</body>

</html>
