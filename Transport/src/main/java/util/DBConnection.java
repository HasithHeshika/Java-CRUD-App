package util;


import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
	
	private static String url="jdbc:mysql://127.0.0.1:3306/transportdb";
	private static String user = "root";
	private static String pass = "akeeth";
	private static Connection con;
	
	public static Connection getConnection () {
		try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url,user,pass);
		}
		catch(Exception e) {
			System.out.println("Database Not Connect !");
		}
      return con;
    }
}
