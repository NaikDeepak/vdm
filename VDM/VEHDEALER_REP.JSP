<%@ page language="java"%>
<%@ page import="java.sql.*, java.io.*"%>
<%! int id=0; %>
<%! int did;%>
<%! String dname;%>
<%! String dhno;%>
<%! String dstreet;%>
<%! String dcity;%>
<%! String dstate;%>
<%! String dcountry;%>
<%! int dzip;%>
<%! int dph1;%>
<%! int dph2;%>
<%! String demail;%>
<%! String dcpfname;%>
<%! String dcpmname;%>
<%! String dcplname;%>
<%! int dcpphone;%>

<html>
<body bgcolor="#FFFFE6"> 
<a href="vehicle_dealer_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a>&nbsp;
<p>&nbsp;</p>
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
 rs=st.executeQuery("select * from  VEHICLE_DEALER_MASTER where DEALER_ID="+id);

 while(rs.next())
	 {
	  did=rs.getInt(1);
	  dname=rs.getString(2);
	  dhno=rs.getString(3);
	  dstreet=rs.getString(4);
	  dcity=rs.getString(5);
	  dstate=rs.getString(6);
	  dcountry=rs.getString(7);
       dzip=rs.getInt(8);
	   dph1=rs.getInt(9);
	   dph2=rs.getInt(10);
	   demail=rs.getString(11);
	   dcpfname=rs.getString(12);
	   dcpmname=rs.getString(13);
	   dcplname=rs.getString(14);
       dcpphone=rs.getInt(15);

	}
	%>
<div align="center">
  <center>
  <table border="0" width="100%">
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066" >dealer  ID: </font></td>
      <td width="50%"> <%=did%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Dealer Name:  </font></td>
      <td width="50%"><%=dname%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Hno:</font></td>
      <td width="50%"><%=dhno%> </td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066"> Street:</font></td>
      <td width="50%"><%=dstreet%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">City:</font></td>
      <td width="50%"><%=dcity%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">State:</font></td>
      <td width="50%"><%=dstate%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Country:</font></td>
      <td width="50%"><%=dcountry%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Zip:</font></td>
      <td width="50%"><%=dzip%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Phone1:</font></td>
      <td width="50%"><%=dph1%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Phone2:</font></td>
      <td width="50%"><%=dph2%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Email ID:</font></td>
      <td width="50%"><%=demail%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Contact Person First Name:</font></td>
      <td width="50%"><%=dcpfname%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Contact Person Middle Name:</font></td>
      <td width="50%"><%=dcpmname%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Contact Person Last Name:</font></td>
      <td width="50%"><%=dcplname%></td>
    </tr>
    <tr>
      <td width="50%" align="right"><font size = "3" align="center" color="#660066">Contact Person Phone:</font></td>
      <td width="50%"><%=dcpphone%></td>
    </tr>
  </table>
  </center>
</div>
<p>



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


