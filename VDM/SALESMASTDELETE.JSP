<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement st=null;%>
<%! ResultSet rs=null;%>

 

<%! int   SALE_NO=0;%>                

<%! int  SUB_BRAND_ID=0;%>           
 <%! int  SALES_PERSON_NO=0;%>        
 <%! int  BRANCH_ID=0;%>              
 <%! int  COLOR_ID=0;%>               
 <%! int  FUEL_SYS_ID=0;%>            
 <%! int  FUEL_ID=0;%>     
 
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
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Sales Information</font></b></p>
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
String SALE_NO1=request.getParameter("sno");                
          
 String SUB_BRAND_ID1=request.getParameter("sbid");                           
 String SALES_PERSON_NO1=request.getParameter("spid");                        
 String BRANCH_ID1=request.getParameter("brid");                              
 String COLOR_ID1=request.getParameter("cid");                               
 String FUEL_SYS_ID1=request.getParameter("fsid");                           
 String FUEL_ID1=request.getParameter("fid");        
 

 SALE_NO=Integer.parseInt(SALE_NO1);
SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
SALES_PERSON_NO=Integer.parseInt(SALES_PERSON_NO1);
BRANCH_ID=Integer.parseInt(BRANCH_ID1);
COLOR_ID=Integer.parseInt(COLOR_ID1);
FUEL_SYS_ID =Integer.parseInt(FUEL_SYS_ID1);
FUEL_ID=Integer.parseInt(FUEL_ID1);
	


	try{
		System.out.println(" in try");
	Class.forName("oracle.jdbc.driver.OracleDriver");
   con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

   st=con.createStatement();
System.out.println(" statement ");
String qr="delete from   SALES_MASTER  where SALE_NO="+SALE_NO+"and   SUB_BRAND_ID="+SUB_BRAND_ID+ " and SALES_PERSON_NO="+SALES_PERSON_NO +" and BRANCH_ID="+BRANCH_ID+"and  COLOR_ID="+COLOR_ID+" and FUEL_SYS_ID="+FUEL_SYS_ID+"and FUEL_ID="+FUEL_ID;
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
          <p align="right"><font color="#820082" size="1"><a href="sales_mast_home.jsp">Back</a></font></td>
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
