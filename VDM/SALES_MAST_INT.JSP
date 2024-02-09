<%@page language="java"%>
<%@page import="java.sql.*,java.io.*"  %>

<%! int  id=0;%>
<%! int id1=0;%>
<%! int  id5=0;%>



<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>
 <%! Statement st1=null;%>
<%!	  ResultSet rs1=null;%>
 <%! Statement st2=null;%>
<%!	  ResultSet rs2=null;%>
 <%! Statement st3=null;%>
<%!	  ResultSet rs3=null;%>
<%! Statement st4=null;%>
<%!	  ResultSet rs4=null;%>
 <%! Statement st5=null;%>
<%!	  ResultSet rs5=null;%>
 <%! Statement st6=null;%>
<%!	  ResultSet rs6=null;%>


<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6"  topmargin=0 leftmargin=0>

<form method="POST" action="SalesMastInsert.jsp">
  
  
  <div align="center">
    <center>
    <table border="0" width="100%" bordercolor="#FFFFE6" height="46">
      <tr>
      <td width="100%" bgcolor="#820082" height="21" bordercolor="#000000">
        <p align="center"><font face="Verdana" color="#FFFFE6" size="2">Insert
        Sales Information&nbsp;</font></td>
      </tr>
    </center>
      <tr>
        <td width="100%" height="19">
          <p align="right"><font color="#820082" size="1"><a href="sales_mast_home.jsp">Back</a></font></p>
        </td>
      </tr>
    </table>
  </div>
  <div align="right">
    <table border="1" width="10%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="right"></td>
      </tr>
    </table>
  </div>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sales No</font></td>
        <td width="50%"><select size="1" name="sno">

		<%
try{
	 
	  Class.forName("oracle.jdbc.driver.OracleDriver");
 
  con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");

  st=con.createStatement();
 rs=st.executeQuery("select max( SALE_NO) from SALES_MASTER");
   while(rs.next())
{
   id=rs.getInt(1);
   id1=id+1;

    %>
   <option value="<%=id1%>"><%=id1%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs.close();
	st.close();
	
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sale Date<font color="red" size="1"> (dd-mon-yy)</font></td>
        <td width="50%"><input type="text" name="sdate" value="" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sale Brand
          Id</font></td>
        <td width="50%"><select size="1" name="sbid">
		 <%
try{
	 
	//System.out.println(con);
  st1=con.createStatement();
 rs1=st1.executeQuery("select SUB_BRAND_ID from VEHICLE_SUB_BRAND_MASTER");
   while(rs1.next())
{
   id=rs1.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs1.close();
	st1.close();

	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sales
          Person No</font></td>
        <td width="50%"><select size="1" name="spid">

		 <%
try{
	 
	//System.out.println(con);
  st2=con.createStatement();
 rs2=st2.executeQuery("select * from EMP_MASTER");
   while(rs2.next())
{
   id=rs2.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs2.close();
	st2.close();

	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Branch Id</font></td>
        <td width="50%"><select size="1" name="brid">

		 <%
try{
	 
	//System.out.println(con);
  st3=con.createStatement();
 rs3=st3.executeQuery("select BRANCH_ID  from DEALER_BRANCH_MASTER");
   while(rs3.next())
{
   id=rs3.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs3.close();
	st3.close();

	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Color Id</font></td>
        <td width="50%"><select size="1" name="cid">
		 <%
try{
	 
	//System.out.println(con);
  st4=con.createStatement();
 rs4=st4.executeQuery("select COLOR_ID  from  VEHICLE_COLOR_MASTER");
   while(rs4.next())
{
   id=rs4.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs4.close();
	st4.close();

	
}
catch(Exception e)
{
}



%>
          </select>
        </td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel System
          Id</font></td>
        <td width="50%"><select size="1" name="fsid">
		 <%
try{
	 
	//System.out.println(con);
  st5=con.createStatement();
 rs5=st5.executeQuery("select FUEL_SYS_ID from FUEL_SYS_MASTER");
   while(rs5.next())
{
   id=rs5.getInt(1);
 

    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs5.close();
	st5.close();

	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel Id</font> </td>
        <td width="50%"><select size="1" name="fid">

		<%
try{
	 
	  System.out.println(con);
  st6=con.createStatement();
 rs6=st6.executeQuery("select FUEL_ID from  FUEL_MASTER");
   while(rs6.next())
{
   id=rs6.getInt(1);


    %>
   <option value="<%=id%>"><%=id%></option>
<%}
			%>
<%}
catch(Exception e)
{}
try
{
	rs6.close();
	st6.close();
	con.close();
	
	
}
catch(Exception e)
{
}



%>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Temporary Registration No</font> </td>
        <td width="50%"><input type="text" name="treg" size="20"></td>
      </tr>
     
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle Payment
          Registration Date<font color="red" size="1"> (dd-mon-yy)</font> </td>
        <td width="50%"><input type="text" name="regdate" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Chasis No</font> </td>
        <td width="50%"><input type="text" name="chno" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Carburator No</font> </td>
        <td width="50%"><input type="text" name="carno" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Battery Make <font color="red" size="1"> (dd-mon-yy)</font> </td>
        <td width="50%"><input type="text" name="batmake" size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Battery No</font> </td>
        <td width="50%"><input type="text" name="batno" size="20"></td>
      </tr>
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right"><input type="submit" value="Insert" name="submit" style="color: #660066"></td>
      <center>
      <td width="50%"></td>
      </tr>
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
