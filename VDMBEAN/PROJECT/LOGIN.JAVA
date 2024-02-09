package project;

import javax.ejb.EJBObject;
import java.rmi.RemoteException;

public interface Login extends EJBObject {
  public boolean adminValidation(int id, String name) throws RemoteException;
  //public boolean customerValidation(int id, String name) throws RemoteException;

}
