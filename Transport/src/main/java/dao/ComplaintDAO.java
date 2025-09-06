package dao;

import model.Complaint;
import util.DBConnection;

import java.sql.*;
import java.util.*;

public class ComplaintDAO {
    public void insert(Complaint c) throws Exception {
        Connection conn = DBConnection.getConnection();
        String sql = "INSERT INTO complaints (customerName, phone, email, incidentDate, vehicleType, complaintType, vehiclePlate, driverName, details) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, c.getCustomerName());
        ps.setString(2, c.getPhone());
        ps.setString(3, c.getEmail());
        ps.setString(4, c.getIncidentDate());
        ps.setString(5, c.getVehicleType());
        ps.setString(6, c.getComplaintType());
        ps.setString(7, c.getVehiclePlate());
        ps.setString(8, c.getDriverName());
        ps.setString(9, c.getDetails());
        ps.executeUpdate();
        conn.close();
    }

    public List<Complaint> getAll() throws Exception {
        Connection conn = DBConnection.getConnection();
        List<Complaint> list = new ArrayList<>();
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM complaints");
        while (rs.next()) {
            Complaint c = new Complaint();
            c.setId(rs.getInt("id"));
            c.setCustomerName(rs.getString("customerName"));
            c.setPhone(rs.getString("phone"));
            c.setEmail(rs.getString("email"));
            c.setIncidentDate(rs.getString("incidentDate"));
            c.setVehicleType(rs.getString("vehicleType"));
            c.setComplaintType(rs.getString("complaintType"));
            c.setVehiclePlate(rs.getString("vehiclePlate"));
            c.setDriverName(rs.getString("driverName"));
            c.setDetails(rs.getString("details"));
            list.add(c);
        }
        conn.close();
        return list;
    }

    public void update(Complaint c) throws Exception {
        Connection conn = DBConnection.getConnection();
        String sql = "UPDATE complaints SET customerName=?, phone=?, email=?, incidentDate=?, vehicleType=?, complaintType=?, vehiclePlate=?, driverName=?, details=? WHERE id=?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, c.getCustomerName());
        ps.setString(2, c.getPhone());
        ps.setString(3, c.getEmail());
        ps.setString(4, c.getIncidentDate());
        ps.setString(5, c.getVehicleType());
        ps.setString(6, c.getComplaintType());
        ps.setString(7, c.getVehiclePlate());
        ps.setString(8, c.getDriverName());
        ps.setString(9, c.getDetails());
        ps.setInt(10, c.getId());
        ps.executeUpdate();
        conn.close();
    }

    public void delete(int id) throws Exception {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("DELETE FROM complaints WHERE id=?");
        ps.setInt(1, id);
        ps.executeUpdate();
        conn.close();
    }
}
