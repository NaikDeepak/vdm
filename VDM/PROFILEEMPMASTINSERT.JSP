<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement stat1=null;%>
<%! ResultSet rs=null;%>

 

<%! int LOGIN_ID=0;%>       
<%! int PROFIL_ID=0;%>       
<%! String PROFILE_ALLOC_DATE="";%>     
<%! String  PROFILE_DEALLOC_DATE="";%>     
 <%! int EMP_NO  =0;%>       
<%! String  EMP_LOGIN_NAME="";%>     
<%! String  EMP_PW_OLD="";%>     
<%! String EMP_PW_NEW="";%>     
<%! String EMP_PWD_CHND_DATE="";%>     

<html>
<body bgcolor="#FFFFE6">
<%  
System.out.println("in insert");

String LOGIN_ID1=request.getParameter("lid");
String PROFIL_ID1=request.getParameter("pid");
String PROFILE_ALLOC_DATE=request.getParameter("adate");
String PROFILE_DEALLOC_DATE=request.getParameter("ddate");
String EMP_NO1=request.getParameter("eid");
String EMP_LOGIN_NAME=request.getParameter("lname");
String EMP_PW_OLD=request.getParameter("pold");
String EMP_PW_NEW=request.getParameter("pnew");
String EMP_PWD_CHND_DATE=request.getParameter("pcdate");


		 LOGIN_ID =Integer.parseInt(LOGIN_ID1);
		PROFIL_ID=Integer.parseInt(PROFIL_ID1);
		EMP_NO =Integer.parseInt(EMP_NO1);
		
try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	stat=con.prepareStatement("insert into   PRO_EMP_MASTER values(?,?,?,?,?,?,?,?,?)");
	

	
	
	System.out.println(" about stat"+stat);
			 stat.setInt(1,LOGIN_ID);
			 stat.setInt(2,PROFIL_ID);
			 stat.setString(3, PROFILE_ALLOC_DATE);
			 stat.setString(4,PROFILE_DEALLOC_DATE);
			stat.setInt(5,EMP_NO);
			 stat.setString(6, EMP_LOGIN_NAME );
			 stat.setString(7,EMP_PW_OLD);
			 stat.setString(8,EMP_PW_NEW );
			 stat.setString(9,EMP_PWD_CHND_DATE);
			 
			int i=stat.executeUpdate(); 
			 System.out.println("mehtod executed");
	
					
	response.sendRedirect("ProfileEmpMastResult.jsp");
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