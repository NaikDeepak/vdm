<%@ page language="java"%>
<%@ page import="java.sql.*,java.io.*"%>


<%! Connection con=null;%>
 <%! Statement st=null;%>
<%!	  ResultSet rs=null;%>

<%! int BRANCH_ID=0;%>       
<%! int SUB_BRAND_ID=0;%>  
<%! int STOCK_QUANTITY=0;%>           



<html>

<head>

<title>Vehicle Brand Master</title>
</head>

<body bgcolor="#FFFFE6">

<form method="POST" action="DBVInventUpdateResult.jsp">
 
  <p>&nbsp;</p>
  <div align="center">
    <center>
    <table border="1" width="100%" bordercolor="#FFFFE6" height="17">
      <tr>
        <td width="100%" height="11">
          <p align="center"><b><font face="Verdana" color="#820082" size="2">Dealer
          Branch Vehicle Inventory</font></b></p>
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
          <p align="right"><font color="#820082" size="1">Back</font></td>
      </tr>
    </table>
  </div>
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <%
String BRANCH_ID1=request.getParameter("bid");
String SUB_BRAND_ID1=request.getParameter("sbid");

		 BRANCH_ID =Integer.parseInt(BRANCH_ID1);
		SUB_BRAND_ID =Integer.parseInt(SUB_BRAND_ID1);
		
	 try{
		 System.out.println("in try");
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 con =DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
	 System.out.println("connection obj created");
     st=con.createStatement();
	 System.out.println("statement executed");
     rs=st.executeQuery("select * from DEALER_BRANCH_VEH_INVENOTY where  BRANCH_ID="+ BRANCH_ID+" and SUB_BRAND_ID="+SUB_BRAND_ID);
System.out.println("mehtod executed");
System.out.println(rs);
 while(rs.next())
	 {
	 System.out.println("in while");
	      BRANCH_ID=rs.getInt(1);
		  SUB_BRAND_ID=rs.getInt(2);
		   STOCK_QUANTITY=rs.getInt(3);
		  
		  
		   }
	
%>
  <div align="center">
    <center>
    <table border="0" width="100%">
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">&nbsp;Brand Id</font></td>
        <td width="50%"><select size="1" name="bid">
	<option value="<%=BRANCH_ID%>"><%=BRANCH_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Sub Brand
          Id</font></td>
        <td width="50%"><select size="1" name="sbid">
	<option value="<%=SUB_BRAND_ID%>"><%=SUB_BRAND_ID%></option>
          </select></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font color="#820082" size="1">Stock
          Quantity</font></td>
        <td width="50%"><input type="text" name="qnty" value=<%=STOCK_QUANTITY%> size="20"></td>
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

			  <% }
	 catch(Exception e)
	 {
	 }
	 try
	 {
		 rs.close();
		 st.close();
		 con.close();

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
