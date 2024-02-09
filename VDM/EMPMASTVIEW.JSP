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

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="--WEBBOT-SELF--">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
          <p align="center"><b><font color="#FFFFE6"><font face="Verdana" size="2">Employee
          Information Form</font></font></b></p>
      </td>
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

   <%


	System.out.println("in view.jsp");

	String e_id1=request.getParameter("e_id");
	String d_id1=request.getParameter("d_id");
		String desig_id1=request.getParameter("desig_id");
	

try
{
	e_id=Integer.parseInt(e_id1);
	desig_id=Integer.parseInt(desig_id1);
		d_id=Integer.parseInt(d_id1);
		
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

		  home_ph=rs.getInt(13);
		  work_ph=rs.getInt(14);
		  mobile_ph=rs.getInt(15);

		  email1=rs.getString(16);
		  email2=rs.getString(17);
		  System.out.println("email*******"+email1+"\t"+email2);

		  gen=rs.getString(18);
		  
		  

		    d_id=rs.getInt(19);
			 desig_id=rs.getInt(20);
			  
		  
		   }
	
%>
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Id</font></td>
        <td width="50%" height="25"><select size="1" name="e_id">
		<option value="<%=e_id%>"><%=e_id%></option>
</tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          First Name</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= f_name%> ></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Middle Name</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= m_name%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">Employee
          Last Name</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= l_name%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Birth</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= dob%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Date
          of Join</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= doj%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Address)
          H.No.</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  hno%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Street</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  street%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">City</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  city%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">State</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  state %>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Country</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  country%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Zip
          Code</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%=  zip %>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Home
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= home_ph%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Work
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= work_ph%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Mobile
          Phone</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= mobile_ph%></td>>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id1</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= email1%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id 2</font></td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= email2%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Gender</font></td>
        <td width="50%" height="24"><input type="text" name="t1" readOnly value=<%= gen%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Department
          Id</font></td>
        <td width="50%" height="24"><input type="text" name="t1" readOnly value=<%= d_id%>></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Designation
          Id</font> </td>
        <td width="50%" height="25"><input type="text" name="t1" readOnly value=<%= desig_id%>></td>
      </tr>
      
			  <%
	 }
		  catch(Exception e)
		  {
		  }
		  try
		  {
			  st.close();
			  rs.close();
			  con.close();
		  }
		  catch(Exception e)
		  {
		  }
		  %>
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
