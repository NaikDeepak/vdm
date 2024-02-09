<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>



<%! int REG_ID =0;%>       
<%! String REGI_NAME="";%>     
 <%! String REGI_DESC="";%>




<html>

<head>

<title>Branch
          Region Information</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="">
  
  
  

  
 <center><font face="Verdana" color="#820082" size="3"><b>Branch
          Region Information</b></font></center></p>


  <%
  String REG_ID1=request.getParameter("rid");

 
		REG_ID =Integer.parseInt(REG_ID1);
  


	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from  BRANCH_REG_ID where  REG_ID ="+REG_ID );
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	     REG_ID=rs.getInt(1);
		  REGI_NAME=rs.getString(2);
		  REGI_DESC=rs.getString(3);
		  
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
          <p align="right"><font color="#820082" size="1"><a href="branch_region_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Region</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><%=   REG_ID%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Region Name</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=  REGI_NAME%></td>
    </tr>
   <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Region Description</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%=  REGI_DESC%></td>
    </tr
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
