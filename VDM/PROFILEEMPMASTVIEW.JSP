<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%!	  int LOGIN_ID=0;%>               
<%!	 int PROFIL_ID=0;%>              
<%!	String  PROFILE_ALLOC_DATE=""; %>     
<%!	String  PROFILE_DEALLOC_DATE=""; %>
<%!	 int EMP_NO=0;%>                 
<%!	String  EMP_LOGIN_NAME=""; %>         
<%!	String  EMP_PW_OLD=""; %>             
<%!	String  EMP_PW_NEW=""; %>             
<%!	String  EMP_PWD_CHND_DATE=""; %>      


    


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
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Profile
          Employee Information&nbsp;</font></b></p>
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
          <p align="right"><font color="#820082" size="1"><a href="prof_emp_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>


  <%


 


	System.out.println("in view.jsp");

	String LOGIN_ID1=request.getParameter("lid");
	


try
{
	LOGIN_ID=Integer.parseInt(LOGIN_ID1);
	
}
catch(Exception e)
{
}

	
	 
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
	 String qr="select * from PRO_EMP_MASTER  where LOGIN_ID="+LOGIN_ID;
	 System.out.println(qr);
 rs=st.executeQuery(qr);
    /* rs=st.executeQuery("select * from PRO_EMP_MASTER  where LOGIN_ID="+LOGIN_ID+ " and PROFIL_ID="+PROFIL_ID +" and EMP_NO="+EMP_NO);*/
System.out.println("mehtod executed");
//System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");

	 LOGIN_ID=rs.getInt(1);              
PROFIL_ID=rs.getInt(2);               
PROFILE_ALLOC_DATE=rs.getString(3);      
PROFILE_DEALLOC_DATE=rs.getString(4);
EMP_NO=rs.getInt(5);                  
EMP_LOGIN_NAME=rs.getString(6);         
EMP_PW_OLD=rs.getString(7);             
EMP_PW_NEW=rs.getString(8);             
EMP_PWD_CHND_DATE=rs.getString(9); 
	    
		  
		   }
	
%>
  <div align="center">
    <center>
    <table border="0" width="100%">
	<tr>
        <td width="50%" align="right"><font color="#820082" size="1">Login Id</font></td>
        <td width="50%"><select size="1" name="pid">
	 <option value="<%=LOGIN_ID%>"><%=LOGIN_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Profile Id</font></td>
        <td width="50%"><select size="1" name="pid">
	 <option value="<%=PROFIL_ID%>"><%=PROFIL_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Profile
          Allocated Date</font></td>
        <td width="50%"><input type="text" name="adate"  value=<%=PROFILE_ALLOC_DATE%> size="20" readOnly></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Profile
          De-Allocated Date</font></td>
        <td width="50%"><input type="text" name="ddate" value=<%=PROFILE_DEALLOC_DATE%> size="20" readOnly></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee Id</font></td>
        <td width="50%"><select size="1" name="eid">
	 <option value="<%=EMP_NO%>"><%=EMP_NO%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Login Name</font></td>
        <td width="50%"><input type="text" name="lname" value=<%= EMP_LOGIN_NAME%> size="20" readOnly></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Password Old</font></td>
        <td width="50%"><input type="text" name="pold" value=<%= EMP_PW_OLD%> size="20" readOnly>&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Employee
          Password New</font></td>
        <td width="50%"><input type="text" name="pnew" value=<%= EMP_PW_NEW%> size="20" readOnly></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Password
          Changed Date</font> </td>
        <td width="50%"><input type="text" name="pcdate" value=<%= EMP_PWD_CHND_DATE%>size="20" readOnly></td>
      </tr>
      
    </table>
			  <%
	 }
		  catch(Exception e)
		  {
		  }
		  %>
    </center>
  </div>
  
</form>

</body>

</html>
