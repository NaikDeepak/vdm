<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int DESIG_ID=0;%>       
<%! String DESIG_NAME="";%>     
 <%! String DESIG_DESC="";%>     



<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="">
  
  
  

  
 <center><font face="Verdana" color="#820082" size="3"><b>Employee
  Information Form</b></font></center></p>


  <%
  String DESIG_ID1=request.getParameter("did");

	DESIG_ID=Integer.parseInt(DESIG_ID1);



	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from DESIGNATION_MASTER where  DESIG_ID="+ DESIG_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      DESIG_ID=rs.getInt(1);
		  
		  DESIG_NAME=rs.getString(2);
		  
		  DESIG_DESC=rs.getString(3);
		
		  
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
          <p align="right"><font color="#820082" size="1">Back</font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Designation</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><%=    DESIG_ID%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Desination Name</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><%= DESIG_NAME%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Designation Description 
       </font></b></td>
      <td width="50%"><%= DESIG_DESC%></td>
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
