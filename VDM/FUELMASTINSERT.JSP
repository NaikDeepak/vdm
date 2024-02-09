<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>


<%! int FUEL_ID    =0;%>       
<%! String FUEL_NAME="";%>     
 


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String FUEL_ID1=request.getParameter("f_id");
FUEL_NAME=request.getParameter("f_name");
 
		 FUEL_ID=Integer.parseInt(FUEL_ID1);
		
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into   FUEL_MASTER values(?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,FUEL_ID);
			 stat.setString(2,FUEL_NAME);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
		
					
		response.sendRedirect("FuelMastResult.jsp");
		}
		catch(Exception E)
		{
			//System.out.println(E.printStackTrace());
			out.println("Error inserting value"+E);
		}	

		try
		{
		stat.close();	
		con.close();
		
		}
		catch(Exception e)
		{
		}
		
%>
</body>
</html>