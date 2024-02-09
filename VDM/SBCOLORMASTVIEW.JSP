<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int SUB_BRAND_ID=0;%>       
<%! int COLOR_ID =0;%>       
<%! String DESCRIPTION="";%>     
 


<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="">
  
  
  

  
 <center><font face="Verdana" color="#820082" size="3"><b>Employee
  Information Form</b></font></center></p>


  <%
String SUB_BRAND_ID1=request.getParameter("sbid");
String COLOR_ID1=request.getParameter("cid");


		 SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
		COLOR_ID  =Integer.parseInt(COLOR_ID1);
		 
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
	 String qr="select * from SUB_BRAND_COLOR_MASTER where  SUB_BRAND_ID="+ SUB_BRAND_ID+" and COLOR_ID ="+COLOR_ID;
	 System.out.println(qr);
rs=st.executeQuery(qr);
     /*rs=st.executeQuery("select * from SUB_BRAND_COLOR_MASTER where  SUB_BRAND_ID="+ SUB_BRAND_ID+" and COLOR_ID ="+COLOR_ID );*/
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      SUB_BRAND_ID=rs.getInt(1);
		  COLOR_ID=rs.getInt(2);
		   DESCRIPTION=rs.getString(3);
		   System.out.println(DESCRIPTION);
		  
		  
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
          <p align="right"><font color="#820082" size="1"><a href="sub_br_color_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Sub Brand</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><%=   SUB_BRAND_ID%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Color Id</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=COLOR_ID %></td>
    </tr>
   <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Description</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=  DESCRIPTION%></td>
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
