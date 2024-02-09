<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat1=null;%>
<%! Statement stat=null;%>
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
stat=con.createStatement();
System.out.println(stat);
String qr="update DEALER_BRANCH_VEH_INVENOTY set  BRANCH_ID="+ BRANCH_ID+",SUB_BRAND_ID="+SUB_BRAND_ID+",STOCK_QUANTITY="+STOCK_QUANTITY;

	int i=stat.executeUpdate(qr);
	
	
	
			 
		
			 System.out.println("mehtod executed");
		
					
	response.sendRedirect("DBVInventUpdateRes.jsp");
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