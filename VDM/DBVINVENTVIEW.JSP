<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int BRANCH_ID=0;%>       
<%! int SUB_BRAND_ID=0;%>  
<%! int STOCK_QUANTITY=0;%>           



<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="">
  
  
  

  
 <center><font face="Verdana" color="#820082" size="3"><b>Dealer
          Branch Vehicle Inventory</b></font></center></p>


  <%
String BRANCH_ID1=request.getParameter("bid");
String SUB_BRAND_ID1=request.getParameter("sbid");

		 BRANCH_ID =Integer.parseInt(BRANCH_ID1);
		SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
		
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from DEALER_BRANCH_VEH_INVENOTY where  BRANCH_ID="+ BRANCH_ID+" and SUB_BRAND_ID="+SUB_BRAND_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      BRANCH_ID=rs.getInt(1);
		  SUB_BRAND_ID=rs.getInt(2);
		   STOCK_QUANTITY=rs.getInt(3);
		  
		  
		   }
	
%>

   
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
          <p align="right"><font color="#820082" size="1"><a href="dealer_br_veh_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Branch Id</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=  BRANCH_ID%></td>
    </tr>
		<tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Sub Brand</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><%=   SUB_BRAND_ID%></td>
    </tr>
   <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Quantity</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=  STOCK_QUANTITY%></td>
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
