<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>


<%! String lid="";%>
<%! String pwd="";%>

<%
 lid=request.getParameter("lid");
pwd=request.getParameter("pwd");
System.out.println("in AdminLogin Form");
System.out.println("uid**********"+lid);
System.out.println("pwd********"+pwd);


 session.setAttribute("Login",lid);
 session.setAttribute("Password",pwd);

 response.sendRedirect("AdminClient.jsp");
		
	 
		
	

	 
	 
		%>
			







