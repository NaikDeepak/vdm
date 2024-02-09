<%@  page  import="java.sql.*"  %>
<%@ page    import="java.io.*"  %>
<html>
<body bgcolor="#FFFFE6">
<form method="POST" action="inventery_record_home.jsp">

<a href="inventery_record_home.jsp" style="color: #660066; font-family: Verdana; font-size: 8pt; font-weight: bold">Back</a></p><BR><BR><BR><BR>
       

<%
	             Connection conn;
	              conn=null;
	             Statement st=null;	 	         
	           String vid=request.getParameter("D1");	
			   System.out.println(vid);
	           String pid=request.getParameter("D2");
			     System.out.println(pid);
		       
				int vcno=Integer.parseInt(request.getParameter("T1"));
				  System.out.println(vcno);
		       int vchno=Integer.parseInt(request.getParameter("T2"));
			     System.out.println(vchno);
		        String vbmake=request.getParameter("T3");
				  System.out.println(vbmake);
		        int vbno=Integer.parseInt(request.getParameter("T4"));
				  System.out.println(vbno);
		 
	              int ivid=Integer.parseInt(vid);
				    System.out.println(ivid);
	              int ipid=Integer.parseInt(pid);
				    System.out.println(ipid);
	try
		{
              Class.forName("oracle.jdbc.driver.OracleDriver");
		     conn =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	        int x =st.executeUpdate("update INVENTORY_RECORD_MAST set PUR_NO="+ipid+" VEH_CARBURATOR_NO ="+vcno+",VEH_CHASIS_NO="+vchno+",VEH_BATTERY_MAKE='"+vbmake+"',VEH_BATTERY_NO="+vbno+" where VEH_ID="+ivid);
		}
		catch(Exception E)
		{
			out.println("Error inserting value"+E);
		}
		finally
{
	conn.close();
}		
%>

 <center><font color="#660066" size="4" face="Garamond"><b>Record is updated </b></font></center><BR><BR><BR><BR>
<center><input type="submit" value="ok" name="submit"></center>
 </p>
</form>

</body>
</html>			