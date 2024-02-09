<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<html>
<head>
<title>Purchase Details Insert</title>
</head>
<body bgcolor="#FFFFE6" topmargin=0 leftmargin=0>
<form method="POST" action="pur_det_rep.jsp"> 
  <div align="center">
    <center>
     <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#FFFFE6">
        <p align="center"><b><font face="Verdana" size="3" color="#820082">Purchas Details View </font> </b></td>
    </tr>
  </table>
    </center>
  </div>
  <a href="purchase_details_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Purchase
        NO</b></font></td>
      <td width="50%"><font color="#800080"><select size="1" name="D1">
	   <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from PURCHASE_DETAILS");
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
%>
        </select></font></td>
    </tr>
    <tr>
      <td width="50%" align="right">&nbsp;
        
        <p>&nbsp;</p>
        <p><font color="#800080" face="Verdana" size="2"><b><input type="submit" value="View" name="submit" tabindex="5" style="color: #800080"></b></font></td>
      <td width="50%"></td>
    </tr>
  </table>
</form>

</body>

</html>
