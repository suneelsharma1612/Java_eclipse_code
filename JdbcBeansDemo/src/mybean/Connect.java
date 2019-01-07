package mybean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect implements DataBean
{
	public Connection getConnection()throws SQLException ,ClassNotFoundException
	
	{
		Class.forName(DB_url);
		Connection con=DriverManager.getConnection(DB_driver_url, DB_username, DB_password);
		return con;
		
	}
}