<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Complaint, dao.ComplaintDAO" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
Complaint complaint = null;

    try {
    	ComplaintDAO dao = new ComplaintDAO();
        for (Complaint c : dao.getAll()) {
            if (c.getId() == id) {
                complaint = c;
                break;
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    }

    if (complaint == null) {
%>
    <p>Complaint not found!</p>
<%
    return;
    }
%>

<html>
<head>

	<link rel="stylesheet" href="css/styles.css">
    <title>Update Complaint</title>
</head>
<body>
<h2>Update Complaint</h2>
<form action="ComplaintController" method="post">
    <input type="hidden" name="action" value="update" />
    <input type="hidden" name="id" value="<%= complaint.getId() %>" />

    Name: <input type="text" name="customerName" value="<%= complaint.getCustomerName() %>" required><br>
    Phone: <input type="text" name="phone" value="<%= complaint.getPhone() %>" maxlength="10" required><br>
    Email: <input type="email" name="email" value="<%= complaint.getEmail() %>" required><br>
    Date of Incident: <input type="date" name="incidentDate" value="<%= complaint.getIncidentDate() %>" required><br>

    Vehicle Type:
    <select name="vehicleType">
        <option <%= complaint.getVehicleType().equals("Tree-wheel") ? "selected" : "" %>>Tree-wheel</option>
        <option <%= complaint.getVehicleType().equals("Bike") ? "selected" : "" %>>Bike</option>
        <option <%= complaint.getVehicleType().equals("Car") ? "selected" : "" %>>Car</option>
        <option <%= complaint.getVehicleType().equals("Van") ? "selected" : "" %>>Van</option>
    </select><br>

    Complaint Type:<br>
    <textarea name="complaintType" rows="4" cols="50"><%= complaint.getComplaintType() %></textarea><br>

    Vehicle Number Plate: <input type="text" name="vehiclePlate" value="<%= complaint.getVehiclePlate() %>" required><br>
    Driver Name: <input type="text" name="driverName" value="<%= complaint.getDriverName() %>"><br>

    Details:<br>
    <textarea name="details" rows="5" cols="50" required><%= complaint.getDetails() %></textarea><br>

    <input type="submit" value="Update Complaint">
</form>

<br>
<a href="viewComplaints.jsp">Back to Complaint List</a>
</body>
</html>
    