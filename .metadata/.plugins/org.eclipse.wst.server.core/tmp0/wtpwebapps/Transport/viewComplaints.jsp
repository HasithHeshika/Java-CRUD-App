<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Complaint" %>
<html>
<head><title>All Complaints</title>
	<link rel="stylesheet" href="css/styles.css">
	</head>
<body>
<h2>Complaints</h2>
<table border="1">
    <tr>
        <th>ID</th><th>Name</th><th>Phone</th><th>Type</th><th>Action</th>
    </tr>
<%
    @SuppressWarnings("unchecked")
    List<Complaint> list = (List<Complaint>) request.getAttribute("complaints");
    if (list != null) {
        for (Complaint c : list) {
%>
    <tr>
        <td><%= c.getId() %></td>
        <td><%= c.getCustomerName() %></td>
        <td><%= c.getPhone() %></td>
        <td><%= c.getComplaintType() %></td>
        <td>
            <form action="updateComplaint.jsp" method="get" style="display:inline;">
                <input type="hidden" name="id" value="<%= c.getId() %>">
                <input type="submit" value="Edit">
            </form>
            <form action="ComplaintController" method="post" style="display:inline;"
                  onsubmit="return confirm('Delete this complaint?');">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="id" value="<%= c.getId() %>">
                <input type="submit" value="Delete">
            </form>
        </td>
    </tr>
<%
        }
    } else {
%>
    <tr><td colspan="5">No complaints found.</td></tr>
<%
    }
%>
</table>
</body>
</html>
