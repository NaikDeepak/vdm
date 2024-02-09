package Data;
import java.sql.*;
public class  DataSourceDemo
{
	Connection con=null;
	public Connection getConn()
	{
		System.out.println("in geConn() method");
		try
		{
			System.out.println("in try");
		Class.forName("oracle.jdbc.driver.DriverManager");
		System.out.println("Driver Invoked");
		con=DriverManager.getConnection("jdbc:oracle:thin:@server:1521:server","vdm","vdm");
		System.out.println("connection established");
		}
		catch(Exception e)
		{
		}
		return con;
}
public void closeConn()
	{
	try
		{
	con.close();
		}
		catch(Exception e)
		{
		}
	}
}
/*
public class DataSourceDemo
{

	public static void main(String[] args) 
	{
		Connection con1;
		DataSourceDemo1 ds=new DataSourceDemo1();
		con1=ds.getConn();
		System.out.println("Hello World!"+con1);
	}
}
*/