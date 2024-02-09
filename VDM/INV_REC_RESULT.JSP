<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int id2=0; %>
<%! int iid=0; %>
<%! int vcno=0; %>
<%! int vchno=0; %>
<%! String vbmake=null; %>
<%! int vbno=0; %>
<html>
<head>
<title>Inventery Record Insert</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="inv_rec_result1.jsp"> 
  <p>&nbsp;</p>
  <table border="0" width="100%">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><font face="Verdana" size="3" color="#FFFFE6"><b>Inventery
        Record Insert</b></font></td>
    </tr>
  </table>
  <a href="inventery_record_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </p>
  <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;
	   Statement st1=null;
	  ResultSet rs1=null;
	  iid=Integer.parseInt(request.getParameter("D1"));
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from INVENTORY_RECORD_MAST where VEH_ID="+iid);
 while(rs.next())
{
   id=rs.getInt(1);  
   id2=rs.getInt(2);
   vcno=rs.getInt(3);
   vchno=rs.getInt(4);
   vbmake=rs.getString(5);
   vbno=rs.getInt(6);
     %>
   
<%}
			%>
				<%}
catch(Exception e)
{}
finally
{
          con.close();
}
%>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Vehicle
        ID</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><select size="1" name="D1">
	   
				<option><%=id%></option>

        </select></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Purchase
        NO</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><select size="1" name="D2">
   <option><%=id2%></option>
        </select></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Vehicle
        Carburates NO</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><input type="text" name="T1" size="20" value="<%=vcno%>"></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Vehicle
        Chasis NO</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><input type="text" name="T2" size="20" value="<%=vchno%>"></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Vehicle
        Battery Make</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><input type="text" name="T3" size="20" value="<%=vbmake%>"></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font face="Verdana" size="2" color="#660066"><b>Vehicle
        Battery NO</b></font></td>
      <td width="50%"><font face="Verdana" size="2" color="#660066"><b><input type="text" name="T4" size="20" value="<%=vbno%>"></b></font></td>
    </tr>
    <tr>
      <td width="50%" align="right">&nbsp;
        <p>&nbsp;</p>
        <p><font face="Verdana" size="2" color="#660066"><b><input type="submit" value="Update" name="submit" style="color: #660066"></b></font></td>
      <td width="50%"></td>
    </tr>
  </table>
</form>

</body>

</html>
