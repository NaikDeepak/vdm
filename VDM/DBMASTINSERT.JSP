<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>

<%! int BRANCH_ID=0;%>                      
<%! String BRANCH_NAME="";%>                    
<%! String BRANCH_DNO="";%>                     
<%! String BRANCH_STREET="";%>                  
<%! String BRANCH_CITY="";%>                    
<%! String BRANCH_STATE="";%>                   
<%! String BRANCH_COUNTRY="";%>                 
<%! int BRANCH_ZIP=0;%>                     
<%! int BRANCH_REGION_ID=0;%>               
<%! int BRANCH_PHONE1=0;%>                  
<%! int BRANCH_PHONE2=0;%>                  
<%! int BRANCH_FAX=0;%>                     
<%! String BRANCH_EMAIL="";%>                   
<%! String BRANCH_CONTACT_PER_FNAME="";%>
<%! String BRANCH_CONTACT_PER_MNAME="";%>
<%! String BRANCH_CONTACT_PER_LNAME="";%>
<%! int BRANCH_CONTACT_PER_PH =0;%>         
<%! int DEALER_ID=0;%>        





<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String BRANCH_ID1=request.getParameter("bid");
System.out.println("one*********"+BRANCH_ID1);
 BRANCH_NAME  =request.getParameter("bname");
 System.out.println("two*********");
   BRANCH_DNO  =request.getParameter("hno");
   System.out.println("three********");
    BRANCH_STREET=request.getParameter("street");
	 BRANCH_CITY=request.getParameter("city");
	  BRANCH_STATE=request.getParameter("state"); 
	  BRANCH_COUNTRY=request.getParameter("country");
	  String BRANCH_ZIP1=request.getParameter("zip");
	  System.out.println("four*********");
	   String BRANCH_REGION_ID1=request.getParameter("rid");
		String BRANCH_PHONE11=request.getParameter("ph1");
		  String BRANCH_PHONE21=request.getParameter("ph2");
		   String BRANCH_FAX1=request.getParameter("fax");
		    BRANCH_EMAIL=request.getParameter("email"); 
			BRANCH_CONTACT_PER_FNAME=request.getParameter("fname");
			 BRANCH_CONTACT_PER_MNAME=request.getParameter("mname");
			  BRANCH_CONTACT_PER_LNAME=request.getParameter("lname");
			 String BRANCH_CONTACT_PER_PH1 =request.getParameter("cpph");
			   String DEALER_ID1 =request.getParameter("did");
			   System.out.println("five*********");


BRANCH_ID=Integer.parseInt(BRANCH_ID1);
 System.out.println("1*********"+BRANCH_ID);

BRANCH_ZIP=Integer.parseInt(BRANCH_ZIP1);
 System.out.println("2*********");

 BRANCH_REGION_ID=Integer.parseInt( BRANCH_REGION_ID1);
  System.out.println("3*********");

BRANCH_PHONE1=Integer.parseInt(BRANCH_PHONE11);
 System.out.println("4*********");

 BRANCH_PHONE2=Integer.parseInt( BRANCH_PHONE21);
  System.out.println("5*********");

BRANCH_FAX=Integer.parseInt(BRANCH_FAX1);
 System.out.println("6*********");

BRANCH_CONTACT_PER_PH=Integer.parseInt(BRANCH_CONTACT_PER_PH1);
 System.out.println("7********");

DEALER_ID=Integer.parseInt(DEALER_ID1);
 System.out.println("8*********");




     
                     


		
		

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	
	
	
	
	String qr="insert into DEALER_BRANCH_MASTER values("+BRANCH_ID+",'"+BRANCH_NAME+"','"+BRANCH_DNO+"','"+BRANCH_STREET +"','"+BRANCH_CITY+"','"+BRANCH_STATE+"','"+BRANCH_COUNTRY +"',"+BRANCH_ZIP+","+BRANCH_REGION_ID+","+BRANCH_PHONE1+","+BRANCH_PHONE2    +","+BRANCH_FAX +",'"+BRANCH_EMAIL+"','"+BRANCH_CONTACT_PER_FNAME+"','"+BRANCH_CONTACT_PER_MNAME+"','"+BRANCH_CONTACT_PER_LNAME+"',"+BRANCH_CONTACT_PER_PH+","+DEALER_ID+")";
	System.out.println(qr);

	stat1=con.createStatement();
	 int rs1=stat1.executeUpdate(qr);
	
			 System.out.println("mehtod executed");

			
				response.sendRedirect("DBMastResult.jsp");
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