<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>

<%! int e_id=0;%>
<%! String f_name="";%>
<%! String m_name="";%>
<%! String l_name="";%>
<%! String dob="";%>
<%! String doj="";%>
<%! String hno="";%>
<%! String street="";%>
<%! String city="";%>
<%! String state="";%>

<%! String country="";%>
<%! int zip=0;%>
<%! int home_ph=0;%>
<%! int work_ph=0;%>
<%! int mobile_ph=0;%>
<%! String email1="";%>
<%! String email2="";%>
<%! String gen="";%>
<%! int d_id=0;%>
<%! int desig_id=0;%>












<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String e_id1=request.getParameter("e_id");
 f_name=request.getParameter("f_name");
 m_name=request.getParameter("m_name");
 l_name=request.getParameter("l_name");
 dob=request.getParameter("dob");
 doj=request.getParameter("doj");
hno=request.getParameter("hno");
		
		
		street=request.getParameter("street");
		System.out.println("Street******:"+street);
		 city=request.getParameter("city");
		 state=request.getParameter("state" );
		country=request.getParameter("country");
		String zip1=request.getParameter("zip" );
		System.out.println("zip******:"+zip1);
		String home_ph1=request.getParameter("home_ph");
		String work_ph1=request.getParameter("work_ph" );
		String mobile_ph1=request.getParameter("mobile_ph" );
		email1=request.getParameter("email1");
		email2=request.getParameter("email2");

		 gen=request.getParameter("R1");
		 System.out.println("gender******"+gen);
		

		String d_id1=request.getParameter("d_id");
		String desig_id1=request.getParameter("desig_id");
		
		

		
		 e_id=Integer.parseInt(e_id1);
		
		 zip=Integer.parseInt(zip1);
		  System.out.println("*******zip:"+zip);

		 home_ph=Integer.parseInt(home_ph1);
		  System.out.println("*******home:"+home_ph);
		 work_ph=Integer.parseInt(work_ph1);
		  System.out.println("*******w"+work_ph);
		 mobile_ph=Integer.parseInt(mobile_ph1);
		  System.out.println("*******m:"+mobile_ph);
		 d_id=Integer.parseInt(d_id1);
		 System.out.println("*******did:"+d_id);
		 desig_id=Integer.parseInt(desig_id1);
		 System.out.println("*******desigid:"+desig_id);
		 
		
		

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	
	
	
	
	String qr="insert into EMP_MASTER values("+e_id+",'"+f_name+"','"+m_name+"','"+l_name+"','"+dob+"','"+doj+"','"+hno+"','"+street+"','"+city+"','"+state+"','"+country+"',"+zip+","+home_ph+","+work_ph+","+mobile_ph+",'"+email1+"','"+email2+"','"+gen+"'," +d_id+","  +desig_id+")";
	System.out.println(qr);

	stat1=con.createStatement();
	 int rs1=stat1.executeUpdate(qr);
	
			 System.out.println("mehtod executed");

			
				response.sendRedirect("EmpMastResult.jsp");
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