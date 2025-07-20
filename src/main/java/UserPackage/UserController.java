package UserPackage;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public class UserController {
	
	//Connect Database
	private static boolean isSucess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data
	public static boolean insertdata(String username, String firstname, String lastname, String email, String birthday, String phone, String password){
		
	boolean isSucess = false;
	
	try {
		//Database Connection Call
		con = DBConnectionUser.getConnection();
		stmt = con.createStatement();
		
		//SQL Query
		String sql = "INSERT INTO user VALUES(0,'"+username+"','"+firstname+"','"+lastname+"','"+email+"','"+birthday+"','"+phone+"','"+password+"')";
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
