<%@ page  language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.*"%>
<%@page import="project.*"%>
<%@page import="java.util.*"%>
<%@page import="javax.ejb.*"%> 
<%@page import="javax.naming.*"%>
<%@page import="java.lang.*"%>

<%@page import="javax.rmi.PortableRemoteObject"%>

<%
System.out.println("in AdminClient.jsp");
		System.out.println("before casting");
       String icid=(String)session.getAttribute("Login");
		int uid=Integer.parseInt(icid);
		System.out.println("username*******"+uid);
		String pwd="";
		System.out.println("before casting");
		pwd=(String)session.getAttribute("Password");
		System.out.println("after casting"+pwd);
		String res="";
		boolean a1=false;
		System.out.println("a1*******"+a1);
	 
	try{
			

		Properties p= new Properties();
		//Hashtable ht=new Hashtable();
		p.put(Context.INITIAL_CONTEXT_FACTORY,"weblogic.jndi.WLInitialContextFactory");
		p.put(Context.PROVIDER_URL,"t3://localhost:7001");
		InitialContext ic=new InitialContext(p);
		Object obj=ic.lookup("LoginBean");		
		LoginHome iHome=(LoginHome)obj;
		Login br=iHome.create();		
		a1=br.adminValidation(uid, pwd);
		System.out.println("after method call");
		System.out.println(a1);
		if(a1==true)
		{System.out.println("in if");
			response.sendRedirect("main.jsp");
		}
		else
		{
			System.out.println("in elseif");
			response.sendRedirect("loginnew.jsp");
		
		}
		/*if(res.equals("no"))
		{
			response.sendRedirect("login.jsp");
		}
else
		{
		int len=res.length();
		//System.out.println(len);
		int i=res.indexOf("\t");
		//System.out.println(i);
		String str=res.substring(0,i);
		int eno=Integer.parseInt(str);
		System.out.println(str);
		String str2=res.substring(i,len);
		System.out.println(str2.trim());
		a1=Integer.parseInt(str2);
		
		if(a1==1)
		{
			System.out.println("in if elseif");
			response.sendRedirect("main.jsp");
		}
		else
			if(a1==2)
		{
			System.out.println("in if elseif else");
			response.sendRedirect("customerchoice.jsp");
		}
		}*/
	}catch(Exception e)
		{ }
 %>


