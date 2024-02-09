<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>


<%! int DEPARTMENT_ID =0;%>       
<%! String DEPARTMENT_NAME ="";%>     
 <%! String DEPARTMENT_DESC="";%>     
<%! int HIGHEST_DESIG_ID =0;%> 


<html>

<head>

<title>Employee Information Form</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="">
  
  
  

  
   <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font color="#FFFFE6" size="2" face="Verdana">Department
        Information Form</font>


      </td>
    </tr>
  </table>
	 <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="Depart_master_home.jsp">Back</a></font>
          <p align="right">&nbsp;</td>
      </tr>
    </table>
  </div>
  <%  
System.out.println("in insert");

String DEPARTMENT_ID1=request.getParameter("d_id");


 
		 DEPARTMENT_ID=Integer.parseInt(DEPARTMENT_ID1);
		 try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
st=con.createStatement();
System.out.println("statement created");
rs=st.executeQuery("select * from DEPARTMENT_MASTER where DEPARTMENT_ID="+DEPARTMENT_ID);

while(rs.next())
			{
	DEPARTMENT_ID=rs.getInt(1);
DEPARTMENT_NAME= rs.getString(2);
		DEPARTMENT_DESC=rs.getString(3);
	HIGHEST_DESIG_ID=rs.getInt(4);
		 
			}
%>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Department</font><font color="#820082"  size="2" face="Verdana"> Id</font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=  DEPARTMENT_ID%>></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Department Name</font><font face="Verdana">
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%= DEPARTMENT_NAME%>></td>
    </tr>
    <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">DepartmentDescription 
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%= DEPARTMENT_DESC%>></td>
    </tr>
   <tr>
      <td width="50%" align="right"><b><font color="#820082" size="2">Highest Designation Id
       </font></b></td>
      <td width="50%"><input type="text" name="t1" readOnly value=<%=  HIGHEST_DESIG_ID%>></td>
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
