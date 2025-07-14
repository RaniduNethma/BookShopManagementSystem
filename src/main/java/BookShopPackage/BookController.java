package BookShopPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	
	//View Data (GetById)
	public static List<BookModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <BookModel> book = new ArrayList<>();
		
		try {
			//Database Connection Call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM book WHERE id '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String quantity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new BookModel(id, name, price, catagory, quantity, description);
				book.add(bk);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return book;
	}
	
	//Get All Data
	public static List<BookModel> GetAllBook(){
		
		ArrayList <BookModel> books = new ArrayList<>();
		
		try {
			//Database Connection Call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "SELECT * FROM book";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String price = rs.getString(3);
				String catagory = rs.getString(4);
				String quantity = rs.getString(5);
				String description = rs.getString(6);
				
				BookModel bk = new BookModel(id, name, price, catagory, quantity, description);
				books.add(bk);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return books;
	}
}
