<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>




<%! int COLOR_ID=0;%>       
<%! String COLOR_NAME="";%>     
 <%! String COLOR_DESC="";%>     
 


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String COLOR_ID1=request.getParameter("cid");
COLOR_NAME=request.getParameter("cname");
 COLOR_DESC=request.getParameter("desc");
 
		 COLOR_ID=Integer.parseInt(COLOR_ID1);
		
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into   VEHICLE_COLOR_MASTER  values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,COLOR_ID);
			 stat.setString(2,COLOR_NAME);
			  stat.setString(3,COLOR_DESC); 

			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
		
					
		response.sendRedirect("VehColorMastResult.jsp");
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