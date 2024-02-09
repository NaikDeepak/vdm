<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>

 

<%! int   SALE_NO=0;%>                
 <%! String SALE_DATE="";%>              
<%! int  SUB_BRAND_ID=0;%>           
 <%! int  SALES_PERSON_NO=0;%>        
 <%! int  BRANCH_ID=0;%>              
 <%! int  COLOR_ID=0;%>               
 <%! int  FUEL_SYS_ID=0;%>            
 <%! int  FUEL_ID=0;%>                
<%! int  VEH_TEMP_REG_NO=0;%>        
 <%! String  VEH_PAYMENT_REG_DATE="";%>
 <%! int  VEH_CHASIS_ID=0;%>          
 <%! int  VEH_CARBURATE_NO=0;%>       
 <%! String VEH_BATTERY_MAKE="";%>       
 <%! int  VEH_BATTERY_NO=0;%>         

<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");


String SALE_NO1=request.getParameter("sno");                
 SALE_DATE=request.getParameter("sdate");                              
 String SUB_BRAND_ID1=request.getParameter("sbid");                           
 String SALES_PERSON_NO1=request.getParameter("spid");                        
 String BRANCH_ID1=request.getParameter("brid");                              
 String COLOR_ID1=request.getParameter("cid");                               
 String FUEL_SYS_ID1=request.getParameter("fsid");                           
 String FUEL_ID1=request.getParameter("fid");                                
 String VEH_TEMP_REG_NO1=request.getParameter("treg");                        
 VEH_PAYMENT_REG_DATE=request.getParameter("regdate");                
 String VEH_CHASIS_ID1=request.getParameter("chno");                          
 String VEH_CARBURATE_NO1=request.getParameter("carno");                       
  VEH_BATTERY_MAKE=request.getParameter("batmake");                       
 String VEH_BATTERY_NO1=request.getParameter("batno");          
 


SALE_NO=Integer.parseInt(SALE_NO1);
SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
SALES_PERSON_NO=Integer.parseInt(SALES_PERSON_NO1);
BRANCH_ID=Integer.parseInt(BRANCH_ID1);
COLOR_ID=Integer.parseInt(COLOR_ID1);
FUEL_SYS_ID =Integer.parseInt(FUEL_SYS_ID1);
FUEL_ID=Integer.parseInt(FUEL_ID1);
VEH_TEMP_REG_NO=Integer.parseInt(VEH_TEMP_REG_NO1);
VEH_CHASIS_ID=Integer.parseInt(VEH_CHASIS_ID1);
VEH_CARBURATE_NO=Integer.parseInt(VEH_CARBURATE_NO1);
VEH_BATTERY_NO=Integer.parseInt(VEH_BATTERY_NO1);


		
		

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	
	

	
	
	String qr="insert into SALES_MASTER values("+SALE_NO +",'"+SALE_DATE +"',"+SUB_BRAND_ID+","+SALES_PERSON_NO+","+BRANCH_ID+","+COLOR_ID+","+ FUEL_SYS_ID+","+FUEL_ID+","+VEH_TEMP_REG_NO+",'"+VEH_PAYMENT_REG_DATE+"',"+VEH_CHASIS_ID+","+VEH_CARBURATE_NO+",'"+ VEH_BATTERY_MAKE+"',"+VEH_BATTERY_NO+")";
	System.out.println(qr);

	stat1=con.createStatement();
	 int rs1=stat1.executeUpdate(qr);
	
			 System.out.println("mehtod executed");

			
				response.sendRedirect("SalesMastResult.jsp");
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