<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>

<%! int e_id=0;%>
<%!	  int d_id=0; %>
<%!	  int desig_id=0; %>
<%!	  int mgr_id=0; %>



<%! Connection con=null;%>
<%!	 Statement st=null;%>
	<%! ResultSet rs=null;%>

<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="--WEBBOT-SELF--">
  
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
  <%
System.out.println("in delete");
String e_id1=request.getParameter("e_id");
	String d_id1=request.getParameter("d_id");
	String desig_id1=request.getParameter("desig_id");
	


	e_id=Integer.parseInt(e_id1);
	
	desig_id=Integer.parseInt(desig_id1);
	

		d_id=Integer.parseInt(d_id1);
		

		mgr_id=Integer.parseInt(mgr_id1);
	

	


	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from  EMP_MASTER where EMP_NO="+e_id+ " and EMP_DEPT_NO="+d_id +" and EMP_DESGN_ID="+desig_id+" and EMP_MGR_NO="+mgr_id;
System.out.println(qr);
rs=st.executeQuery(qr);


  System.out.println("method executed");
  }

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

  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1">Back</font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">your account is deleted from the database</font></td>
        <td width="50%" height="25"></td>
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
