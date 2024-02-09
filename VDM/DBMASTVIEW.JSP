<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st1=null;%>
<%!	  ResultSet rs1=null;%>

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

<head>

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
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Dealer
          Branch Information Form</font></b></p>
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
          <p align="right"><font color="#820082" size="1"><a href="dea_bran_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<%  
System.out.println("in view");

String BRANCH_ID1=request.getParameter("bid");


			   BRANCH_ID=Integer.parseInt(BRANCH_ID1);



 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st1=con.createStatement();
	 System.out.println("statement executed");
	 String qr="select * from  DEALER_BRANCH_MASTER  where BRANCH_ID="+BRANCH_ID;
	 System.out.println(qr);
	  rs1=st1.executeQuery(qr);
	  //boolean str=rs1.next();
//System.out.println(str);

/*     rs1=st.executeQuery("select * from  DEALER_BRANCH_MASTER  where BRANCH_ID="+BRANCH_ID+ " and BRANCH_REGION_ID="+BRANCH_REGION_ID+" and BRANCH_REGION_ID="+BRANCH_REGION_ID);*/
System.out.println("mehtod executed");
System.out.println(rs1);
 while(rs1.next())
	 {
System.out.println("in while");

	  BRANCH_ID=rs1.getInt(1);                     
 BRANCH_NAME=rs1.getString(2);                   
 BRANCH_DNO=rs1.getString(3);                       
 BRANCH_STREET =rs1.getString(4);                   
 BRANCH_CITY=rs1.getString(5);                      
 BRANCH_STATE=rs1.getString(6);                     
 BRANCH_COUNTRY=rs1.getString(7);                   
 BRANCH_ZIP =rs1.getInt(8);                                         
 BRANCH_REGION_ID=rs1.getInt(9);                                    
 BRANCH_PHONE1=rs1.getInt(10);                                       
 BRANCH_PHONE2=rs1.getInt(11);                                       
 BRANCH_FAX=rs1.getInt(12);                                          
 BRANCH_EMAIL=rs1.getString(13);                     
 BRANCH_CONTACT_PER_FNAME=rs1.getString(14);  
 BRANCH_CONTACT_PER_MNAME=rs1.getString(15);  
 BRANCH_CONTACT_PER_LNAME=rs1.getString(16);  
 BRANCH_CONTACT_PER_PH =rs1.getInt(17);                              
 DEALER_ID =rs1.getInt(18);                                          

  }
	
%>
	 
  <div align="center">
    <center>
    <table border="0" width="100%" height="599">
      <tr>
		<td width="50%" align="right" height="25"><font color="#820082" size="1">Branch
          Id</font></td>
        <td width="50%" height="25"><%= BRANCH_ID %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font color="#820082" size="1">&nbsp;Branch
          Name</font></td>
        <td width="50%" height="25"><%= BRANCH_NAME %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Address)
          H.No.</font></td>
        <td width="50%" height="25"><%=  BRANCH_DNO%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Street</font></td>
        <td width="50%" height="25"><%= BRANCH_STREET %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">City</font></td>
        <td width="50%" height="25"><%= BRANCH_CITY  %></td>
      </tr>
			<tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">State</font></td>
        <td width="50%" height="25"><%= BRANCH_STATE %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Country</font></td>
        <td width="50%" height="25"><%= BRANCH_COUNTRY  %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Zip
          Code</font></td>
        <td width="50%" height="25"><%= BRANCH_ZIP   %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Region
          Id</font></td>
        <td width="50%" height="25"><%= BRANCH_REGION_ID  %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Branch
          Phone1</font></td>
        <td width="50%" height="25"><%=  BRANCH_PHONE1%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Branch
          Phone2</font></td>
        <td width="50%" height="25"><%= BRANCH_PHONE2 %></td>
      </tr>
	<tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Fax
          No.</font></td>
        <td width="50%" height="25"><%=  BRANCH_FAX  %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Email
          Id</font></td>
        <td width="50%" height="25"><%=  BRANCH_EMAIL%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">(Contact
          Pers1on Name) Firs1t Name</font></td>
        <td width="50%" height="25"><%=  BRANCH_CONTACT_PER_FNAME%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Middle
          Name&nbsp;</font></td>
        <td width="50%" height="24"><%=  BRANCH_CONTACT_PER_MNAME%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Last
          Name&nbsp;</font></td>
        <td width="50%" height="24"><%=  BRANCH_CONTACT_PER_LNAME%></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="24"><font size="1" color="#820082">Contact
          Pers1on Phone No.</font></td>
        <td width="50%" height="24"><%=  BRANCH_CONTACT_PER_PH %></td>
      </tr>
      <tr>
        <td width="50%" align="right" height="25"><font size="1" color="#820082">Dealer
          Id</font> </td>
        <td width="50%" height="25"><%= DEALER_ID  %></td>
      </tr>
      
			    <%
	 }
		  catch(Exception e)
		  {
		  }
		  try
		  {
			  st1.close();
			  rs1.close();
			  con.close();
		  }
		  catch(Exception e)
		  {
		  }
		  %>
    </table>
    </center>
  </div>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>

</body>

</html>
