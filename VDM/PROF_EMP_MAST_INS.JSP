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

<body bgcolor="#FFFFE6">

<form method="POST" action="ProfileEmpMastInsert.jsp">
  
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Profile
          Employee Information&nbsp;</font></b></p>
        </td>
      </tr>
    </table>
    </center>
  </div>
  <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font size="1"><font color="#FFFFE6"><font face="Verdana">
        <marquee direction="right" align="middle" behavior="slide">Vehicle
        Dealer Management</marquee>
        </font></font></font></b></td>
    </tr>
  </table>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href=
		  "prof_emp_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
	<tr>
        <td width="50%" align="right"><font color="#820082" size="1">Login Id</font></td>
        <td width="50%"><select size="1" name="lid">
		<%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select  max( LOGIN_ID) from PRO_EMP_MASTER");
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
        <td width="50%" align="right"><font color="#820082" size="1">Profile Id</font></td>
        <td width="50%"><select size="1" name="pid">
		<%
try{
	 
	
  st=con.createStatement();
 rs=st.executeQuery("select  PROFILE_ID from PROFILE_MASTER");
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
        <td width="50%" align="right"><font color="#820082" size="1">    Profile
          Allocated Date <font color="red" size="1"> (dd-mon-yy)
		  &nbsp;   </font></td>
        <td width="50%"><input type="text" name="adate" size="20"></td>
		
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1"> Profile
          De-Allocated Date <font color="red" size="1"> (dd-mon-yy)</font></td>
        <td width="50%"><input type="text" name="ddate" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee Id</font></td>
        <td width="50%"><select size="1" name="eid">
		 <%
try{
	 
	//System.out.println(con);
  st1=con.createStatement();
 rs1=st1.executeQuery("select  EMP_NO  from EMP_MASTER");
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
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Login Name</font></td>
        <td width="50%"><input type="text" name="lname" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Password Old</font></td>
        <td width="50%"><input type="password" name="pold" size="20">&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Password New</font></td>
        <td width="50%"><input type="password" name="pnew" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Password
          Changed Date <font color="red" size="1"> (dd-mon-yy)</font> </td>
        <td width="50%"><input type="text" name="pcdate" size="20"></td>
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
