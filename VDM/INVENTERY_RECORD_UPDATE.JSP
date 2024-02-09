 <%@ page import="java.io.*"  %>
 <%@ page import="java.sql.*"  %>
 <%! int c1;%>
 <%! int c2;%>
 <html>
 <head> 
<title>Inventory Record Update</title>
</head>
<body bgcolor="#FFFFE6"> 
<form method="POST" action="inv_rec_result.jsp">
<table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Inventory Record  Master</font></b></td>
    </tr>
  </table>
  <BR><BR>&nbsp;<BR><BR>
  <div align="center">
    <center>
    <table border="0" width="  80%">
      <tr>
        <td width="50%" align="right"><font color="#660066" size="3" face="Garamond"><b>Vehicle ID </b></font></td>
        <td width="50%"><select size="1" name="D1">
<%
		Connection con=null;
		Statement st=null;
	 	ResultSet rs=null;
							  	 
 try{
	 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con  = DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	st=con.createStatement();
	rs=st.executeQuery("select * from INVENTORY_RECORD_MAST");
 	while(rs.next())
	 {

	   c2=rs.getInt(1);
	   %>
	   <option value="<%=c2%>"><%=c2%></option>
	<%}
 

%>
<%
}catch(Exception e){}
%>
          </select></td>
      </tr>
       
    </table>
    </center>
  </div>
  <p align="center">&nbsp;</p>
  <p align="center">
  
 
  <input type="submit" value="Update" name="submit" style="color: #660066">
 
  
  </p>
</form>

<p align="center">&nbsp;</p>

</body>

</html>
