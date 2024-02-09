<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int FUEL_SYS_ID=0;%>       
<%! String FUEL_SYS_DESC="";%>     


<html>

<head>

<title>Fuel  System Information Form</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="">
  
  
  

  
   <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center">
  
  
  

  
 <center><font face="Verdana" color="#FFFFE6" size="2">Fuel System
  Information Form</font></center>


  
      </td>
    </tr>
  </table>
	 <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="fuel_sys_master_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <%
  String FUEL_SYS_ID1=request.getParameter("f_id");
FUEL_SYS_ID =Integer.parseInt(FUEL_SYS_ID1);
  


	
	 
	 try
		 {
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from  FUEL_SYS_MASTER where  FUEL_SYS_ID="+ FUEL_SYS_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	     FUEL_SYS_ID=rs.getInt(1);
		  
		  FUEL_SYS_DESC=rs.getString(2);
		  
	 }
	
%>

   
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Fuel System</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><input type="text" name="t1" value=<%=  FUEL_SYS_ID%> readoOnly></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Fuel System Description</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><input type="text" name="t2" value=<%=  FUEL_SYS_DESC%> readOnly></td>
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
