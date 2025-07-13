package BookShopPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class BookController {

	//Connect Database
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data
	public static boolean insertdata(String name, String price, String catagory, String quantity, String description) {
		
		boolean isSucess = false;
		
		try {
			//Database Connection Call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "INSERT INTO book VALUES(0,'"+name+"','"+price+"','"+catagory+"','"+quantity+"','"+description+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSucess = true;
			}
			else {
				isSucess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSucess;
	}
}
