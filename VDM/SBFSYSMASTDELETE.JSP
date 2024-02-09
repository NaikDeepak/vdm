<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>

<%! int SU_BRAND_ID=0;%>       
<%! int FUEL_SYS_ID=0;%>       
<%! String DESCRIPTION="";%>     




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
String SU_BRAND_ID1=request.getParameter("sbid");
String FUEL_SYS_ID1=request.getParameter("fsid");

 
		 SU_BRAND_ID =Integer.parseInt(SU_BRAND_ID1);
		FUEL_SYS_ID =Integer.parseInt(FUEL_SYS_ID1);
		 
		 
  
	
	

	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from SUB_BRAND_FUEL_SYS_MASTER where  SU_BRAND_ID="+ SU_BRAND_ID+" and FUEL_SYS_ID="+FUEL_SYS_ID;
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
        <p align="center"><b><font face="Verdana" size="2" color="#FFFFE6">Sub Brand Fuel System Information Form</font></b></td>
    </tr>
  </table>
   <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="sub_br_fuel_sys_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>

  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Your
        Account is Deleted </font></b></td>
      <td width="50%"><%= SU_BRAND_ID%></td>
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
