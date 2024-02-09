<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>

<%! int e_id=0;%>
<%!	  int d_id=0; %>
<%!	  int desig_id=0; %>



<%! Connection con=null;%>
<%!	 Statement st=null;%>
	<%! ResultSet rs=null;%>

<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="--WEBBOT-SELF--">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font face="Verdana" color="#FFFFE6" size="2">Employee
          Information Form</font></td>
    </tr>
  </table>
  <%
System.out.println("in delete");
String e_id1=request.getParameter("e_id");



	e_id=Integer.parseInt(e_id1);
	System.out.println("***"+e_id+"***");
	

		

	


	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from  EMP_MASTER where  where EMP_NO="+e_id;
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
          <p align="right"><font color="#820082" size="1"><a href="employee_mast_home.jsp">Back</a></font>
          <p align="right">&nbsp;</td>
      </tr>
    </table>
  </div>
 <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Your
        Account is Deleted </font></b></td>
      <td width="50%"><%=  e_id%></td>
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
