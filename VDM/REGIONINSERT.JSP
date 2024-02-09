<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>



<%! int REG_ID=0;%>       
<%! String REGI_NAME="";%>     
 <%! String REGI_DESC="";%>


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String REG_ID1=request.getParameter("rid");
REGI_NAME=request.getParameter("rname");
 REGI_DESC=request.getParameter("desc");
 
		 REG_ID =Integer.parseInt(REG_ID1);
		
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into   BRANCH_REG_ID values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,REG_ID);
			 stat.setString(2,REGI_NAME);
			  stat.setString(3, REGI_DESC);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
		
					
		response.sendRedirect("RegionResult.jsp");
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