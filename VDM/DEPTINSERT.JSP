<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>



<%! int DEPARTMENT_ID =0;%>       
<%! String DEPARTMENT_NAME ="";%>     
 <%! String DEPARTMENT_DESC="";%>     
<%! int HIGHEST_DESIG_ID =0;%> 


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String DEPARTMENT_ID1=request.getParameter("d_id");
DEPARTMENT_NAME=request.getParameter("d_name");
DEPARTMENT_DESC=request.getParameter("desc");
String HIGHEST_DESIG_ID1=request.getParameter("desig_id");
 
		 DEPARTMENT_ID=Integer.parseInt(DEPARTMENT_ID1);
		//System.out.println("two*******"+DESIG_ID);
		 HIGHEST_DESIG_ID=Integer.parseInt(HIGHEST_DESIG_ID1);
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into   DEPARTMENT_MASTER values(?,?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,DEPARTMENT_ID);
			 stat.setString(2,DEPARTMENT_NAME );
			 stat.setString(3,DEPARTMENT_DESC);
			 stat.setInt(4,HIGHEST_DESIG_ID);
			
			
			
			// System.out.println("mehtod "+DESIG_DESC);

			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
			 
			response.sendRedirect("DepartResult.jsp");
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