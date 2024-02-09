<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>



<%! int SU_BRAND_ID=0;%>       
<%! int COLOR_ID =0;%>       
<%! String DESCRIPTION="";%>     
 


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String SU_BRAND_ID1=request.getParameter("sbid");
String COLOR_ID1=request.getParameter("cid");

DESCRIPTION=request.getParameter("desc");
 
		 SU_BRAND_ID =Integer.parseInt(SU_BRAND_ID1);
		COLOR_ID  =Integer.parseInt(COLOR_ID1);
		 

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into  SUB_BRAND_COLOR_MASTER values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,SU_BRAND_ID);
			 stat.setInt(2,COLOR_ID);
			 stat.setString(3,DESCRIPTION);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
	
					
	response.sendRedirect("SBColorMastResult.jsp");
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