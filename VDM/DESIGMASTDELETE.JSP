<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>

<%! int DESIG_ID=0;%>



<%! Connection con=null;%>
<%!	 Statement st=null;%>
	<%! ResultSet rs=null;%>
<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6">
<%
System.out.println("in delete");
String DESIG_ID1=request.getParameter("did");
	

	DESIG_ID=Integer.parseInt(DESIG_ID1);
	
	

	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from DESIGNATION_MASTER where DESIG_ID="+DESIG_ID;
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

<form method="POST" action="--WEBBOT-SELF--">
  
  
  
 <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Designation
          Information Form</font></b></p>
        </td>
      </tr>
    </table>
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
          <p align="right"><font color="#820082" size="1"><a href="designation_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>

  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Your
        Account is Deleted </font></b></td>
      <td width="50%"><%= DESIG_ID%></td>
    </tr>
    <tr>
      <td width="50%" align="right">
        
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </td>
      <td width="50%"></td>
    </tr>
  </table>
</form>

</body>

</html>
