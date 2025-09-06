package TransportPackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url ="jdbc:mysql://localhost:3306/transport";
	private static String user = "root";
	private static String pass = "122025ht";
	private static Connection con;
	
public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, user, pass);
	}catch(Exception e) {
		System.out.println("Database is not connected !");
	}
		return con;
	}
}

