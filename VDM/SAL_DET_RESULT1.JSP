<%@ page  import="java.io.*"  %>
<%@ page  import="java.sql.*"  %>
<%! int c1;%>
<%! int c2;%>
<html>
<head> 
<title>sales Details</title>
</head>
<body bgcolor="#FFFFE6"> 
   <a href="sales_home.jsp">Back</a></font></p> 
<form method="POST" action="sales_home.jsp">

  <p align="center"><b><font face="Garamond" size="5" color="#660066">Sales Details</font></b></p>
  <div align="center">
    <center>
    <table border="0" width="  80%">
      <tr>
        <td width="100%" align="center">
		<font color="#660066" size="4" face="Garamond"><b>Record is updated </b></font>
		</td>
       
		
		<%
		                Connection con =null;
						Statement st=null;
	                  String sid=request.getParameter("D1");	
	                  String fid=request.getParameter("D2");
		              int fcost=Integer.parseInt(request.getParameter("T1"));
		              int fqty=Integer.parseInt(request.getParameter("T2"));
		 
	int ifid=Integer.parseInt(fid);
	System.out.println(ifid);
	int isid=Integer.parseInt(sid);
		System.out.println(isid);
			System.out.println(fcost);
				System.out.println(fqty);
							  	 
 try{
	 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	st=con.createStatement();
	int x =st.executeUpdate("update SALES_DETAILS set FEATURE_ID="+ifid+"FEATURE_COST="+fcost+" FEATURE_QNTY="+fqty+"where SALE_NO ="+isid);
	
	
}catch(Exception e){}
%>  
                 
    </table>
    </center>
  </div>
  <p align="center">&nbsp;</p>
  <p align="center">
  
 
  <input type="submit" value="ok" name="submit" style="color: #660066">
 
  
  </p>
</form>

<p align="center">&nbsp;</p>

</body>

</html>
