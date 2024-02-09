<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>

<%! int DESIG_ID=0;%>       
<%! String DESIG_NAME="";%>     
 <%! String DESIG_DESC="";%>     


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String DESIG_ID1=request.getParameter("did");
DESIG_NAME=request.getParameter("dname");
DESIG_DESC=request.getParameter("desc");
 
		 DESIG_ID=Integer.parseInt(DESIG_ID1);
		System.out.println("two*******"+DESIG_ID);
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into  DESIGNATION_MASTER values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,DESIG_ID);
			 stat.setString(2,DESIG_NAME);
			 stat.setString(3,DESIG_DESC);
			
			
			
			 System.out.println("mehtod "+DESIG_DESC);

			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
		%> <p> Your information is added into the database</p>
					
	<%			//response.sendRedirect("EmpMastResult.jsp");
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