package jyt_jdbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_connect {
	
	public static Connection play_connection()
	{
		return get_connection();
	}
	
	private static Connection get_connection()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			Connection conn = DriverManager.getConnection(url, "sw212", "1234");
			return conn;
		}
		catch (Exception e)
		{
			return null;
		}
	}
	
}
