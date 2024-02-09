<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int mid;%>
<%! String mname;%>
<%! String hno;%>
<%! String street;%>
<%! String city;%>
<%! String state;%>
<%! String country;%>
<%! int zip;%>
<%! int ph1;%>
<%! int ph2;%>
<%! int fax;%>
<%! String email;%>



<html>
<body bgcolor="#FFFFE6"> 
<a href="vehicle_manufacture_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>
<p>

 <%
 String id1=request.getParameter("D1");
id=Integer.parseInt(id1);
Connection con=null;
	 Statement st=null;
	 ResultSet rs=null;
 try{
	 

 Class.forName("oracle.jdbc.driver.OracleDriver");
  con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
  st=con.createStatement();
 rs=st.executeQuery("select * from  VEHICLE_MANUFA_MASTER where VEH_MANU_ID="+id);

 while(rs.next())
	 {
	  mid=rs.getInt(1);
	  mname=rs.getString(2);	          
	  hno=rs.getString(3);
	  street=rs.getString(4);
	  city=rs.getString(5);
	  state=rs.getString(6);
	  country=rs.getString(7);
	  zip=rs.getInt(8);
	  ph1=rs.getInt(9);
	  ph2=rs.getInt(10);
	  fax=rs.getInt(11);
	  email=rs.getString(12);
	}
	%>
		<p>&nbsp;</p>
	<center></p>
<table border="0" width="100%">
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Manufacture
      ID:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=mid%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Manufacture
      Name:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=mname%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>HNO:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=hno%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Street:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=street%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>City:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=city%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>State:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=state%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Country:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=country%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Zip:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=zip%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Phone1:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=ph1%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Phone2:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=ph2%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Fax:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=fax%></font></td>
  </tr>
  <tr>
    <td width="50%" align="right"><font color="#800080" face="Verdana" size="2"><b>Email:</b></font></td>
    <td width="50%"><font color="#800080" face="Verdana" size="2"><%=email%></font></td>
  </tr>
</table>
<%}

catch(Exception e)
{}
finally
{
st.close();
rs.close();
con.close();
}
%>
	
</body>
</html>