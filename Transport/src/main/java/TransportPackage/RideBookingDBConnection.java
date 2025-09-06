//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package TransportPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class RideBookingDBConnection {
    private static String url = "jdbc:mysql://localhost:3306/rides";
    private static String user = "root";
    private static String pass = "nethmini";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception var1) {
            System.out.println("Database not connected!");
        }

        return con;
    }
}
