package model;

public class Complaint {
    private int id;
    private String customerName;
    private String phone;
    private String email;
    private String incidentDate;
    private String vehicleType;
    private String complaintType;
    private String vehiclePlate;
    private String driverName;
    private String details;

    // Default constructor
    public Complaint() {}

    // Full constructor (optional for convenience)
    public Complaint(int id, String customerName, String phone, String email, String incidentDate,
                     String vehicleType, String complaintType, String vehiclePlate,
                     String driverName, String details) {
        this.id = id;
        this.customerName = customerName;
        this.phone = phone;
        this.email = email;
        this.incidentDate = incidentDate;
        this.vehicleType = vehicleType;
        this.complaintType = complaintType;
        this.vehiclePlate = vehiclePlate;
        this.driverName = driverName;
        this.details = details;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIncidentDate() {
        return incidentDate;
    }

    public void setIncidentDate(String incidentDate) {
        this.incidentDate = incidentDate;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getComplaintType() {
        return complaintType;
    }

    public void setComplaintType(String complaintType) {
        this.complaintType = complaintType;
    }

    public String getVehiclePlate() {
        return vehiclePlate;
    }

    public void setVehiclePlate(String vehiclePlate) {
        this.vehiclePlate = vehiclePlate;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }
}
