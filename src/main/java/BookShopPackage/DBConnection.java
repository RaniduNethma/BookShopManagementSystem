package BookShopPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String databaseURL = "jdbc:mysql://localhost:3306/bookshop";
	private static String user = "root";
	private static String password = "root";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(databaseURL, user, password);
		}
		catch(Exception e) {
			System.out.println( "Database not connected!");
			System.out.println(e);
		}
		return con;
	}
}