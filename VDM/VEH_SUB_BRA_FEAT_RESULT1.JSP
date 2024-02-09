<%@ page  import="java.io.*"  %>
<%@ page  import="java.sql.*"  %>
<%! int c1;%>
<%! int c2;%>
<html>
<head> 
<title>Purchase Details</title>
</head>
<body bgcolor="#FFFFE6"> 
   <a href="vehicle_sub_brand_feature_home.jsp">Back</a></font></p> 
<form method="POST" action="vehicle_sub_brand_feature_home.jsp">

  <p align="center"><b><font face="Garamond" size="5" color="#660066">Purchase Details</font></b></p>
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
	                  String fid=request.getParameter("D1");	
	                  String sbid=request.getParameter("D2");
		              int fqty=Integer.parseInt(request.getParameter("T1"));
		              int ifid=Integer.parseInt(fid);					  
					  int isbid=Integer.parseInt(sbid);

					  System.out.println(ifid);
					  System.out.println(isbid);
					  System.out.println(fqty);
							  	 
 try{
	 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	st=con.createStatement();
	int x =st.executeUpdate("update VEHI_SUB_BRAND_FEAT_MASTER set FEAT_ID ="+ifid+"FEAT_QTY="+fqty+" where SUB_BRAND_ID ="+isbid);	
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
