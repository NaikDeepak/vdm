<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<%! int id=0; %>
<%! int fid;%>
<%! String fname;%>
<%! String fdesc;%>
<%! int fminp;%>
<%! int fmaxp;%>

<html>
<body bgcolor="#FFFFE6"> 
<a href="vehicle_feature_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p>

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
 rs=st.executeQuery("select * from  VEHIC_FEATURES_MASTER where FEATURE_ID="+id);

 while(rs.next())
	 {
	  fid=rs.getInt(1);
	  fname=rs.getString(2);
	  fdesc=rs.getString(3);
	  fminp=rs.getInt(4);
	  fmaxp=rs.getInt(5);                                                                                                                                                                                                                                                                                                                                                                                                                       
	}
	%>
	<p><font size = "3" align="center" color="#660066" >Feature ID: <%=fid%> </font><BR></p>
<p><font size = "3" align="center" color="#660066">Feature Name: <%=fname%> </font><BR></p>
<p><font size = "3" align="center" color="#660066">Feature Description: <%=fdesc%> </font></p>
<p><font size = "3" align="center" color="#660066">Feature Min Price: <%=fminp%> </font></p>
<p><font size = "3" align="center" color="#660066">Feature Max Price: <%=fmaxp%> </font></p>

	 
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


