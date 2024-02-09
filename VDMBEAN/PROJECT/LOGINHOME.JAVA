package project;

import javax.ejb.EJBHome;
import javax.ejb.CreateException;
import java.rmi.RemoteException;

public interface LoginHome
    extends EJBHome {
  public Login create() throws CreateException, RemoteException;
}

