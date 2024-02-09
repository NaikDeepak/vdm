<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>

<%! Connection con=null;%>
<%! PreparedStatement stat=null;%>
<%! Statement st=null;%>
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

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="SalesMastUpdateResult.jsp">
  
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6">
      <tr>
        <td width="100%">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Sales Information&nbsp;</font></b></p>
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
          <p align="right"><font color="#820082" size="1"><a href="sales_mast_home.jsp">Back</a></font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <%  
System.out.println("in insert");


String SALE_NO1=request.getParameter("sno");                
          
 
 SALE_NO=Integer.parseInt(SALE_NO1);

try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
     con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
System.out.println(con);
	
	 st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from  SALES_MASTER  where SALE_NO="+SALE_NO);
System.out.println("mehtod executed");
//System.out.println(rs);
 while(rs.next())
	 {

	 SALE_NO=rs.getInt(1);                
SALE_DATE=rs.getString(2);              
SUB_BRAND_ID=rs.getInt(3);           
SALES_PERSON_NO=rs.getInt(4);        
BRANCH_ID=rs.getInt(5);              
COLOR_ID=rs.getInt(6);               
FUEL_SYS_ID=rs.getInt(7);            
FUEL_ID=rs.getInt(8);                
VEH_TEMP_REG_NO=rs.getInt(9);        
VEH_PAYMENT_REG_DATE=rs.getString(10);              
VEH_CHASIS_ID=rs.getInt(11);          
VEH_CARBURATE_NO=rs.getInt(12);       
VEH_BATTERY_MAKE=rs.getString(13);                     
VEH_BATTERY_NO=rs.getInt(14);         



%>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sales No</font></td>
        <td width="50%"><select size="1" name="sno">
	<option value="<%=SALE_NO%>"><%=SALE_NO%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sale Date <font color="red" size="1"> (yy-mm-dd)</font></td>
        <td width="50%"><input type="text" name="sdate" value=<%= SALE_DATE%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sale Brand
          Id</font></td>
        <td width="50%"><select size="1" name="sbid">
	<option value="<%=SUB_BRAND_ID%>"><%=SUB_BRAND_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sales
          Person No</font></td>
        <td width="50%"><select size="1" name="spid">
	<option value="<%=SALES_PERSON_NO%>"><%=SALES_PERSON_NO%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Branch Id</font></td>
        <td width="50%"><select size="1" name="brid">
	<option value="<%=BRANCH_ID%>"><%=BRANCH_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Color Id</font></td>
        <td width="50%"><select size="1" name="cid">
	<option value="<%=COLOR_ID%>"><%=COLOR_ID%></option>
          </select>
        </td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel System
          Id</font></td>
        <td width="50%"><select size="1" name="fsid">
	<option value="<%=FUEL_SYS_ID%>"><%=FUEL_SYS_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Fuel Id</font> </td>
        <td width="50%"><select size="1" name="fid">
	<option value="<%=FUEL_ID%>"><%=FUEL_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Temporary Registration No</font> </td>
        <td width="50%"><input type="text" name="treg" value=<%= VEH_TEMP_REG_NO %> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082"  size="1">Vehicle
          Permanent Registration No <font color="red" size="1"> (yy-mm-dd)</font> </td> 
        <td width="50%"><input type="text" name="preg" value=<%= VEH_BATTERY_MAKE%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082"  size="1">Vehicle
          Registration Date</font> </td>
        <td width="50%"><input type="text" name="regdate" value=<%= VEH_PAYMENT_REG_DATE%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Chasis No</font> </td>
        <td width="50%"><input type="text" name="chno" value=<%= VEH_CHASIS_ID%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Carburator No</font> </td>
        <td width="50%"><input type="text" name="carno" value=<%=VEH_CARBURATE_NO %> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Battery Make <font color="red" size="1"> (yy-mm-dd)</font> </td>
        <td width="50%"><input type="text" name="batmake" value=<%= VEH_BATTERY_MAKE%> size="20"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Vehicle
          Battery No</font> </td>
        <td width="50%"><input type="text" name="batno" value=<%= VEH_BATTERY_NO%> size="20"></td>
      </tr>
      <tr>
        <td width="50%">&nbsp;
          <p>&nbsp;</p>
        </center>
        <p align="right"><input type="submit" value="Update" name="submit" style="color: #660066"></td>
      <center>
      <td width="50%"></td>
      </tr>
    </table>
    </center>
			   <%
	 }
		}
		catch(Exception e)
		{
		}
		%>
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
