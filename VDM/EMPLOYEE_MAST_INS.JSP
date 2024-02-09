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
 <%! Statement st2=null;%>
<%!	  ResultSet rs2=null;%>
 <%! Statement st3=null;%>
<%!	  ResultSet rs3=null;%>

<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="EmpMastInsert.jsp">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" color="#FFFFE6" size="2">&nbsp;
        Employee
          Information Form</font></b></td>
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
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="e_id">
		  <%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select max( EMP_NO) from EMP_MASTER");
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
	
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          First Name</font></td>
        <td width="50%" height="25"><input type="text" name="f_name" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Middle Name</font></td>
        <td width="50%" height="25"><input type="text" name="m_name" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Last Name</font></td>
        <td width="50%" height="25"><input type="text" name="l_name" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Birth</font></td>
        <td width="50%" height="25"><input type="text" name="dob" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Join</font></td>
        <td width="50%" height="25"><input type="text" name="doj" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Address)
          H.No.</font></td>
        <td width="50%" height="25"><input type="text" name="hno" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Street</font></td>
        <td width="50%" height="25"><input type="text" name="street" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">City</font></td>
        <td width="50%" height="25"><input type="text" name="city" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">State</font></td>
        <td width="50%" height="25"><input type="text" name="state" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Country</font></td>
        <td width="50%" height="25"><input type="text" name="country" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Zip
          Code</font></td>
        <td width="50%" height="25"><input type="text" name="zip" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Home
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="home_ph" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Work
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="work_ph" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Mobile
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="mobile_ph" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id1</font></td>
        <td width="50%" height="25"><input type="text" name="email1" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id 2</font></td>
        <td width="50%" height="25"><input type="text" name="email2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Gender</font></td>
        <td width="50%" height="24"><input type="radio" value="M" checked name="R1"><font color="#820082">Male
          <input type="radio" name="R1" value="F">Female</font></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Department
          Id</font></td>
        <td width="50%" height="24"><select size="1" name="d_id">
		 <%
try{
	 
	//System.out.println(con);
  st1=con.createStatement();
 rs1=st1.executeQuery("select * from DEPARTMENT_MASTER");
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

	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Designation
          Id</font> </td>
        <td width="50%" height="25"><select size="1" name="desig_id">
		<%
try{
	 
	  System.out.println(con);
  st2=con.createStatement();
 rs2=st2.executeQuery("select * from  DESIGNATION_MASTER ");
   while(rs2.next())
{
   id=rs2.getInt(1);


    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs2.close();
	st2.close();
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
        <p align="right"><input type="submit" value="Insert" name="submit" style="color: #660066"></td>
      <center>
      <td width="50%" height="103"></td>
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
