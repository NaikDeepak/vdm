<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int FUEL_ID    =0;%>       
<%! String FUEL_NAME="";%>     



<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="">
  
  
  

  
  <%
  String FUEL_ID1=request.getParameter("f_id");
  System.out.println("fuel id*******"+FUEL_ID1);
 FUEL_ID=Integer.parseInt(FUEL_ID1);
   System.out.println("fuel id*******"+FUEL_ID);
  


	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from FUEL_MASTER where  FUEL_ID="+ FUEL_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      FUEL_ID=rs.getInt(1);
		  
		  FUEL_NAME=rs.getString(2);
		  
		   }
	
%>

   
  

  
   <table border="0" width="100%" color="" height="18" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font face="Verdana" size="3" color="#FFFFE6"><b>Fuel</b></font><font color="#FFFFE6">
  
  
  

  
 <b><font face="Verdana" size="3"> Information Form</font></b>


        &nbsp;</font></td>
    </tr>
  </table>


   <p>&nbsp;</p>

   
	 <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="fuel_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Fuel</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=   FUEL_ID%>></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Fuel Name</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=  FUEL_NAME%>></td>
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
