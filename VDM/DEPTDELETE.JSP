<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>

<%! int DEPARTMENT_ID =0;%>       
<%! int HIGHEST_DESIG_ID =0;%> 



<%! Connection con=null;%>
<%!	 Statement st=null;%>
	<%! ResultSet rs=null;%>
<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>
<%
System.out.println("in delete");
 String DEPARTMENT_ID1=request.getParameter("d_id");

 

		 DEPARTMENT_ID=Integer.parseInt(DEPARTMENT_ID1);
		
		 
	
	

	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from DEPARTMENT_MASTER where  DEPARTMENT_ID="+DEPARTMENT_ID;
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
  
  
  
    <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font face="Verdana" color="#FFFFE6" size="2">Designation
          Information Form</font></td>
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

  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font color="#820082" size="2">Your
        Account is Deleted </font></td>
      <td width="50%"><%=  DEPARTMENT_ID%></td>
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
