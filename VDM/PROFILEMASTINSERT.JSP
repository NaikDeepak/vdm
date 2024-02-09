<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>



<%! int PROFILE_ID=0;%>       
<%! String PROFILE_NAME="";%>     
 <%! String PROFILE_DESC="";%>


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String PROFILE_ID1=request.getParameter("p_id");
PROFILE_NAME=request.getParameter("p_name");
 PROFILE_DESC=request.getParameter("desc");
 
		 PROFILE_ID =Integer.parseInt(PROFILE_ID1);
		
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into  PROFILE_MASTER values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,PROFILE_ID);
			 stat.setString(2,PROFILE_NAME);
			  stat.setString(3, PROFILE_DESC);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
		
					
		response.sendRedirect("ProfileMastResult.jsp");
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