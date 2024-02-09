<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int SU_BRAND_ID=0;%>       
<%! int FUEL_ID=0;%>       
<%! String DESCRIPTION="";%>     



<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="">
  
  
  

  
  <%
 String SU_BRAND_ID1=request.getParameter("sbid");
String FUEL_ID1=request.getParameter("fid");


 
		 SU_BRAND_ID =Integer.parseInt(SU_BRAND_ID1);
		FUEL_ID =Integer.parseInt(FUEL_ID1);
		 
  


	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from SUB_BRAND_FUEL_MASTER where  SU_BRAND_ID="+ SU_BRAND_ID+" and FUEL_ID="+FUEL_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      SU_BRAND_ID=rs.getInt(1);
		  FUEL_ID=rs.getInt(2);
		   DESCRIPTION=rs.getString(3);
		  
		  
		   }
	
%>

   
   <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><center><b><font face="Verdana" color="#820082" size="3">Su</font><font face="Verdana" color="#FFFFE6" size="3">b
        Brand Fuel Information Form</font></b></center>


      </td>
    </tr>
  </table>
	 <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="sub_br_fuel_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Sub Brand</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=   SU_BRAND_ID%>></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Fuel Id</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=  FUEL_ID%>></td>
    </tr>
   <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Description</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=  DESCRIPTION%>></td>
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
			<% }
	 catch(Exception e)
	 {
	 }
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

</body>

</html>
