package UserPackage;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	//Login Validate
	public static List<UserModel> loginValidate (String username, String password){
		
		ArrayList<UserModel> user = new ArrayList<>();
		
		try {
			//Database Connection Call
			con = DBConnectionUser.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM user WHERE username='"+username+"' AND password='"+password+"'";
			rs = stmt.executeQuery(sql);

			if(rs.next()) {
				int id = rs.getInt(1);
				String usernameTemp = rs.getString(2);
				String firstname = rs.getString(3);
				String lastname = rs.getString(4);
				String emailTemp = rs.getString(5);
				String birthday = rs.getString(6);
				String phone = rs.getString(7);
				String passwordTemp = rs.getString(8);
				
				UserModel addUser = new UserModel(id, usernameTemp, firstname, lastname, emailTemp, birthday, phone, passwordTemp);
				user.add(addUser);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	//Profile Management
	public static List<UserModel> userProfile (String id){
		
		int convertID = Integer.parseInt(id);
		ArrayList <UserModel> user = new ArrayList<>();
		
		try {
			//Database Connection Call
			con = DBConnectionUser.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM user WHERE id='"+convertID+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int userID = rs.getInt(1);
				String usernameTemp = rs.getString(2);
				String firstname = rs.getString(3);
				String lastname = rs.getString(4);
				String emailTemp = rs.getString(5);
				String birthday = rs.getString(6);
				String phone = rs.getString(7);
				String passwordTemp = rs.getString(8);
				
				UserModel userData = new UserModel(userID, usernameTemp, firstname, lastname, emailTemp, birthday, phone, passwordTemp);
				user.add(userData);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	//Update User Profile
	public static boolean updateUserData(String id, String username, String firstname, String lastname, String email, String birthday, String phone){
		try {
			//Database Connection Call
			con = DBConnectionUser.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "UPDATE user SET username='"+username+"', firstname='"+firstname+"', lastname='"+lastname+"', email='"+email+"', birthday='"+birthday+"', phone='"+phone+"'"
					+ "WHERE id='"+id+"'";
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
	
	//View User Data (GetById)
	public static List<UserModel> getById (String ID){
		
		int convertedID = Integer.parseInt(ID);
		
		ArrayList <UserModel> user = new ArrayList<>();
		
		try {
			//Database Connection Call
			con = DBConnectionUser.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM user WHERE id '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String username = rs.getString(2);
				String firstname = rs.getString(3);
				String lastname = rs.getString(4);
				String email = rs.getString(5);
				String birthday = rs.getString(6);
				String phone = rs.getString(7);
				String password = rs.getString(8);
				
				UserModel um = new UserModel(id, username, firstname, lastname, email, birthday, phone, password);
				user.add(um);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}
		
	//Delete User Data
	public static boolean deleteUserData(String id){
		
		int idForDelete = Integer.parseInt(id);
		
		try {
			//Database Connection Call
			con = DBConnectionUser.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "DELETE FROM user WHERE id='"+idForDelete+"'";
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
