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
<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="--WEBBOT-SELF--">
  
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Employee
          Information Form</font></b></p>
        </td>
      </tr>
    </table>
    </center>
  </div>
  <table border="0" width="100%" color="" height="30">
    <tr>
      <td width="100%" bgcolor="#820082">
        <p align="center"><b><font size="1"><font color="#FFFFE6"><font face="Verdana">
        <marquee direction="right" align="middle" behavior="slide">Vehicle
        Dealer Management</marquee>
        </font></font></font></b></td>
    </tr>
  </table>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"><font color="#820082" size="1"><a href="employee_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

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

		 gen=request.getParameter("gen");
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
	
	
	/*int x =st.executeUpdate("update EVENT_TYPE_MASTER set  EVENT_TYPE_NAME ='"+j+"',  EVENT_TYPE_DESC ='"+k+"'where EVENT_TYPE_ID ="+i);*/
	
	String qr="update  EMP_MASTER set EMP_NO="+e_id+",EMP_FNAME='"+f_name+"',EMP_MNAME='"+m_name+"',EMP_LNAME='"+l_name+"',EMP_DOB='"+dob+"',EMP_DOJ='"+doj+"',EMP_HNO='"+hno+"',EMP_STRNAME='"+street+"',EMP_CTYNAME='"+city+"',EMP_STNAME='"+state+"',EMP_CTNAME='"+country+"',EMP_ZIP="+zip+",EMP_HPH="+home_ph+",EMP_WPH="+work_ph+",EMP_MOB="+mobile_ph+",EMP_EMAIL1='"+email1+"',EMP_EMAIL2='"+email2+"',EMP_GEN='"+gen+"',EMP_DEPT_NO=" +d_id+",EMP_DESGN_ID="+desig_id;
	System.out.println(qr);

	stat1=con.createStatement();
	 int rs1=stat1.executeUpdate(qr);
	
			 System.out.println("mehtod executed");

				
		
					
				response.sendRedirect("EmpMastUpdateRes.jsp");
		}
		catch(Exception E)
		{
			//System.out.println(E.printStackTrace());
			out.println("Error inserting value"+E);
		}	

		try
		{
		stat1.close();	
		con.close();
		
		}
		catch(Exception e)
		{
		}
		
%>
</body>
</html>