<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>

<%! int  id=0;%>
<%! int id1=0;%>
<%! int  id5=0;%>



<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>
 


<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>

<form method="POST" action="SalesMastDelete.jsp">
  
  <table border="0" width="100%" color="" height="30" bgcolor="#820082">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font face="Verdana" color="#FFFFE6" size="2">Delete
        Sales
          Information&nbsp;</font></td>
    </tr>
  </table>
  
  <p align="right"><font color="#820082" size="1"><a href="sales_mast_home.jsp">Back</a></font></p>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right">&nbsp;</td>
      </tr>
    </table>
  </div>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sales No</font></td>
        <td width="50%"><select size="1" name="sno">

			<%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select SALE_NO from SALES_MASTER");
   while(rs.next())
{
   id=rs.getInt(1);
  

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
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
          </select></td>
      </tr>
      
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right">&nbsp;</td>
      <center>
      <td width="50%"><input type="submit" value="Delete" name="submit" style="color: #660066"></td>
      </tr>
    </table>
    </center>
  </div>
 
</form>

</body>

</html>
