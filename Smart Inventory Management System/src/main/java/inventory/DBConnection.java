package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	//global
	String URL = "jdbc:mysql://localhost:3306/inventory_db";
	String USER = "root";
	String PASS = "";
	
	Connection conn;
	Statement stm;
	
	DBConnection(){
		//String sql = "DELETE FROM stock_transactions WHERE product_id = 7; ";
		//String sql = "DELETE FROM products WHERE id=7";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(URL,USER,PASS);
			stm = conn.createStatement();
			//stm.executeUpdate(sql);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}//constructor

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		new DBConnection();

	}

}
