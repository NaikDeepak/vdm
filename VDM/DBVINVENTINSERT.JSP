<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>




<%! int BRANCH_ID=0;%>       
<%! int SUB_BRAND_ID=0;%>  
<%! int STOCK_QUANTITY=0;%>       

 


<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String BRANCH_ID1=request.getParameter("bid");
String SUB_BRAND_ID1=request.getParameter("sbid");
String STOCK_QUANTITY1=request.getParameter("qnty");


 
		 BRANCH_ID =Integer.parseInt(BRANCH_ID1);
		SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
		 STOCK_QUANTITY =Integer.parseInt(STOCK_QUANTITY1);

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into DEALER_BRANCH_VEH_INVENOTY values(?,?,?)");
	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,BRANCH_ID);
			 stat.setInt(2,SUB_BRAND_ID);
			 stat.setInt(3,STOCK_QUANTITY);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
	
					
	response.sendRedirect("DBVInventResult.jsp");
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