package project;

import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.ejb.CreateException;
import java.sql.*;
import java.util.*;
public class LoginBean
    implements SessionBean {
  SessionContext sessionContext;
  public void ejbCreate() throws CreateException {
  }

  public void ejbRemove() {
  }

  public void ejbActivate() {
  }

  public void ejbPassivate() {
  }

  public void setSessionContext(SessionContext sessionContext) {
    this.sessionContext = sessionContext;
  }

 public boolean adminValidation(int id, String pwd) 
 {
     int i=0;
     int k=0;
    String j=null;
    boolean flag=false;
	            try
                {
			              Connection con=null;
					      ResultSet rs=null;
	  				    
	                      Statement st=null;
						  Class.forName("oracle.jdbc.driver.OracleDriver");
                          con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
                           st=con.createStatement();
                           String ss="select * from PRO_EMP_MASTER where  LOGIN_ID="+id+" and EMP_PW_NEW='"+pwd+"'";
                           System.out.println(ss);
                           rs=st.executeQuery(ss);
						  
                           if(rs.next())
                          {
									System.out.println("In If Cond");
									return true;
                           }
							con.close();
                   }catch(Exception e)
				   {
					   e.printStackTrace();
				   }
				    return false;
  }
/* public boolean customerValidation(int id, String name) 
 {
     int i=0;
     int k=0;
    String j=null;
    boolean flag=false;
	            try
                {
			              Connection con=null;
					      ResultSet rs=null;
	                      Statement st=null;
						  Class.forName("oracle.jdbc.driver.OracleDriver");
                          con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","atmprog","acpv");
                           st=con.createStatement();
                           String ss="select * from ATM_CUST_CARD_SECURITY where  ATM_CARD_NO='"+id+"' and ATM_PIN_CURRENT='"+name+"'";
                           System.out.println(ss);
                           rs=st.executeQuery(ss);
                           if(rs.next())
                          {
									System.out.println("In If Cond");
			                          flag=true;
                           }
							con.close();
                   }catch(Exception e)
				   {
					   e.printStackTrace();
				   }
				    return flag;
  }
*/
}
