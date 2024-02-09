<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int e_id=0;%>
<%!	String f_name=""; %>
<%!	String m_name=""; %>
<%!	String l_name=""; %>
<%!	  String dob="";%>
<%!	  String doj="";%>
<%! String hno="";%> 
<%!	String street="";%>
<%!	String city="";%>
<%!	String state="";%>
<%!  String country=""; %>
<%!	  int zip=0; %>
<%!	  int home_ph=0;%>
<%!	  int work_ph=0;%>
<%!	  int mobile_ph=0;%>
<%!	  String email1="";%>
<%!	  String email2="";%>
<%!	  String gen="";%>

<%!	  int d_id=0; %>
<%!	  int desig_id=0; %>


<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="EmpMastUpdateResult.jsp">

  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Employee
          Information Form</font></b></p>
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
          <p align="right"><font color="#820082" size="1"><a href="employee_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <%


	System.out.println("in view.jsp");

	String e_id1=request.getParameter("eid");
	

try
{
	e_id=Integer.parseInt(e_id1);
	System.out.println(e_id);
	
}
catch(Exception e)
{
}

	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from  EMP_MASTER  where EMP_NO="+e_id);
		 
System.out.println("mehtod executed");
//System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      e_id=rs.getInt(1);
		  System.out.println("e_id******"+e_id);
		  f_name=rs.getString(2);
		  System.out.println(f_name);
		  m_name=rs.getString(3);
		  l_name=rs.getString(4);
		 dob=rs.getString(5);
		 doj=rs.getString(6);

		hno=rs.getString(7);
		  street=rs.getString(8);
		  city=rs.getString(9);
		  System.out.println(city);
		  state=rs.getString(10);
		  country=rs.getString(11);
		  zip=rs.getInt(12);
		  System.out.println(zip);

		  home_ph=rs.getInt(13);
		  System.out.println("home"+home_ph);
		  work_ph=rs.getInt(14);
		  System.out.println("work"+work_ph);
		  mobile_ph=rs.getInt(15);
		  System.out.println("mobile:"+mobile_ph);

		  email1=rs.getString(16);
		  email2=rs.getString(17);
		  System.out.println("email*******"+email1+"\t"+email2);

		  gen=rs.getString(18);
		  
		  

		    d_id=rs.getInt(19);
			 desig_id=rs.getInt(20);
			  
		  
		
	
%>
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="e_id">
 <option value="<%=e_id%>"><%=e_id%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          First Name</font></td>
        <td width="50%" height="25"><input type="text" name="f_name"  value=<%= f_name %> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Middle Name</font></td>
        <td width="50%" height="25"><input type="text" name="m_name"  value=<%=  m_name%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Last Name</font></td>
        <td width="50%" height="25"><input type="text" name="l_name" value=<%=  l_name%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Birth</font></td>
        <td width="50%" height="25"><input type="text" name="dob" value=<%= dob%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Join</font></td>
        <td width="50%" height="25"><input type="text" name="doj" value=<%= doj%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Address)
          H.No.</font></td>
        <td width="50%" height="25"><input type="text" name="hno" value=<%= hno%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Street</font></td>
        <td width="50%" height="25"><input type="text" name="street" value=<%= street%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">City</font></td>
        <td width="50%" height="25"><input type="text" name="city" value=<%= city%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">State</font></td>
        <td width="50%" height="25"><input type="text" name="state" value=<%= state%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Country</font></td>
        <td width="50%" height="25"><input type="text" name="country" value=<%= country%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Zip
          Code</font></td>
        <td width="50%" height="25"><input type="text" name="zip" value=<%= zip%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Home
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="home_ph" value=<%= home_ph%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Work
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="work_ph" value=<%= work_ph%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Mobile
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="mobile_ph" value=<%= mobile_ph%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id1</font></td>
        <td width="50%" height="25"><input type="text" name="email1" value=<%= email1%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id 2</font></td>
        <td width="50%" height="25"><input type="text" name="email2" value=<%= email2%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Gender</font></td>
        <td width="50%" height="24"><input type="text" name="gen" value=<%= gen%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Department
          Id</font></td>
        <td width="50%" height="24"><input type="text" name="d_id" value=<%= d_id%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Designation
          Id</font> </td>
        <td width="50%" height="25"><input type="text" name="desig_id" value=<%= desig_id%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" height="103">
          
        </center>
        
      
        <p align="right"><input type="submit" value="Update" name="submit" style="color: #660066"></td>
      <center>
      <td width="50%" height="103"></td>
      </tr>
    </table>
			  <%
	 }
	 }
		  catch(Exception e)
		  {
		  }
		  try
		  {
			  con.close();
		  }
		  catch(Exception e)
		  {
		  }
		  %>
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
