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
 

<html>

<head>
<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="DBMastInsert.jsp">
 
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Dealer
          Branch Information Form</font></b></p>
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
          <p align="right"><font color="#820082" size="1"><a href="dea_bran_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Branch
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="bid">
<%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select max(  BRANCH_ID ) from  DEALER_BRANCH_MASTER");
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
        <td width="50%" align="right" height="25"><font color="#820082" size="1">&nbsp;Branch
          Name</font></td>
        <td width="50%" height="25"><input type="text" name="bname" size="20"></td>
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
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Region
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="rid">
		<%
try{
	 
	//System.out.println(con);
  st1=con.createStatement();
 rs1=st1.executeQuery("select * from BRANCH_REG_ID");
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
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Branch
          Phone1</font></td>
        <td width="50%" height="25"><input type="text" name="ph1" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Branch
          Phone2</font></td>
        <td width="50%" height="25"><input type="text" name="ph2" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Fax
          No.</font></td>
        <td width="50%" height="25"><input type="text" name="fax" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id</font></td>
        <td width="50%" height="25"><input type="text" name="email" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Contact
          Person Name) First Name</font></td>
        <td width="50%" height="25"><input type="text" name="fname" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Middle
          Name&nbsp;</font></td>
        <td width="50%" height="24"><input type="text" name="mname" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Last
          Name&nbsp;</font></td>
        <td width="50%" height="24"><input type="text" name="lname" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Contact
          Person Phone No.</font></td>
        <td width="50%" height="24"><input type="text" name="cpph" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Dealer
          Id</font> </td>
        <td width="50%" height="25"><select size="1" name="did">
		<%
try{
	 
	  System.out.println(con);
  st2=con.createStatement();
 rs2=st2.executeQuery("select * from  VEHICLE_DEALER_MASTER ");
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
