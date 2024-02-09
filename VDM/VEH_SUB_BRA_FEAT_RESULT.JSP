<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int sbid=0; %>
<%! int fid=0; %>
<%! int fqty=0; %>
<html>
<head>
<title>Vehicle Sub Brand Feature Update</title>
</head>
<body bgcolor="#FFFFE6">
<form method="POST" action="veh_sub_bra_feat_result1.jsp"> 
  <div align="center">
    <center>
    <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font face="Verdana" size="3" color="#FFFFE6">Vehicle Sub Brand 
        Feature Update</font></b></td>
    </tr>
  </table>
    </center>
  </div>
  <a href="vehicle_sub_brand_feature_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082">Sub Brand
          ID</font></td>
        <td width="50%"><select size="1" name="D1">
 <%
     Connection con=null;
	 Statement st=null;
	  ResultSet rs=null;	  
	  try{
	 
 Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
  sbid=Integer.parseInt(request.getParameter("D1"));
 rs=st.executeQuery("select * from VEHI_SUB_BRAND_FEAT_MASTER where SUB_BRAND_ID ="+sbid);
 while(rs.next())
{
   id=rs.getInt(1);
   fid=rs.getInt(2);
   fqty=rs.getInt(3);
}
     %>
   <option><%=id%></option>
<%}
catch(Exception e)
{}
finally
{
	con.close();
}
%>

          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082">Feature
          ID</font></td>
        <td width="50%"><select size="1" name="D2">
         <option><%=fid%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2" color="#820082">Feature
          Quantity</font></td>
        <td width="50%"><input type="text" name="T1" size="20" value="<%=fqty%>"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana" size="2"><b><input type="submit" value="Update" name="submit" style="color: #820082"></b></font></td>
        <td width="50%"></td>
      </tr>
    </table>
    </center>
  </div>  
</form>

</body>

</html>
