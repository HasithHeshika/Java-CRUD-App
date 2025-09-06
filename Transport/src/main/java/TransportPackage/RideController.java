//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by FernFlower decompiler)
//

package TransportPackage;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RideController {
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    public static boolean insertdata(String name, String contact, String email, String pickup_location, String drop_location) {
        boolean isSuccess = false;

        try {
            con = RideBookingDBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "INSERT INTO bookings VALUES (0, '" + name + "', '" + contact + "', '" + email + "', '" + pickup_location + "', '" + drop_location + "')";
            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static List<RideModel> getById(String Id) {
        int convertedID = Integer.parseInt(Id);
        ArrayList<RideModel> ride = new ArrayList();

        try {
            con = RideBookingDBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "select * from bookings where id = '" + convertedID + "'";
            rs = stmt.executeQuery(sql);

            while(rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contact = rs.getString(3);
                String email = rs.getString(4);
                String pickup_location = rs.getString(5);
                String drop_location = rs.getString(6);
                RideModel rd = new RideModel(id, name, contact, email, pickup_location, drop_location);
                ride.add(rd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ride;
    }

    public static List<RideModel> getAllRides() {
        ArrayList<RideModel> rides = new ArrayList();

        try {
            con = RideBookingDBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "select * from bookings";
            rs = stmt.executeQuery(sql);

            while(rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String contact = rs.getString(3);
                String email = rs.getString(4);
                String pickup_location = rs.getString(5);
                String drop_location = rs.getString(6);
                RideModel rd = new RideModel(id, name, contact, email, pickup_location, drop_location);
                rides.add(rd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return rides;
    }

    public static boolean updateData(String id, String name, String contact, String email, String pickup_location, String drop_location) {
        try {
            con = RideBookingDBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "UPDATE bookings SET name='" + name + "', contact='" + contact + "', email='" + email + "', pickup_location='" + pickup_location + "', drop_location='" + drop_location + "' WHERE id=" + id;
            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    public static boolean deletedata(String id) {
        int convID = Integer.parseInt(id);

        try {
            con = RideBookingDBConnection.getConnection();
            stmt = con.createStatement();
            String sql = "DELETE FROM bookings WHERE id = " + convID;
            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            } else {
                isSuccess = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}
