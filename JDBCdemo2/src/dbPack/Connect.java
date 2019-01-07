package dbPack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect implements DBinfo{
	public Connection getCon()throws SQLException,ClassNotFoundException {
		Class.forName(DB_driver);
		Connection cn=DriverManager.getConnection(DB_url, DB_username, DB_password);
		return cn;
	}
}