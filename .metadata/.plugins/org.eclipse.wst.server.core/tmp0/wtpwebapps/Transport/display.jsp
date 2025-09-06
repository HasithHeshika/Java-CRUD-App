<%--

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>Profile Information</h3>
<table>
	<tr>
		<th>ID</th>
		<th>Full Name</th>
		<th>Email</th>
		<th>Phone Number</th>
		<th>Pickup Location</th>
		<th>Action</th>
	</tr>
	<c:forEach var="profile_informations" items="${allTransport}">
	<tr>
		<td>${ profile_informations.id}</td>
		<td>${ profile_informations.fullname}</td>
		<td>${ profile_informations.email}</td>
		<td>${ profile_informations.phone_number}</td>
		<td>${ profile_informations.pickup_location}</td>
		
		<td>
			<a href="update.jsp?id=${profile_informations.id}&fullname=${profile_informations.fullname}&email=${profile_informations.email}&phone_number=${profile_informations.phone_number}&pickup_location=${profile_informations.pickup_location}">
			<button>Update</button>
			</a>
			
			<form action="DeleteServlet" method="post">
			<input type="hidden" name="id" value="${profile_informations.id}" />
			<button>Delete</button>
			</form>
		</td>
		
	</tr>
	</c:forEach>
</table>
</body>
</html>

 --%>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Information</title>
<link rel="stylesheet" type="text/css" href="your-css-path.css">
<style>
/* Reset and base styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
}

body {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    margin: 0;
    background-color: #439bc4; 
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    color: #333;
    line-height: 1.6;
}

a {
    text-decoration: none;
    color: inherit;
}

/* Navigation */
header {
    background-color: #004d99;
    padding: 15px 0;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.nav-links {
    list-style: none;
    display: flex;
    justify-content: right;
    gap: 40px;
}

.nav-links li a {
    color: white;
    font-weight: 500;
    transition: color 0.3s;
}

.nav-links li a:hover {
    color: #ffcc00;
}

.nav-links li:last-child {
    margin-right: 20px;
}

.nav-links li a.btn-primary {
    margin-top: 10px;
}

/* Buttons */
.btn-primary {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border-radius: 25px;
    display: inline-block;
    transition: background-color 0.3s ease;
}

.btn-primary:hover {
    background-color: #0056b3;
}

/* Section Styling */
.account-profile-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center; 
    min-height: calc(100vh - 80px); 
    padding: 20px;
    gap: 20px;
}

.account-sections-wrapper {
    display: flex;
    justify-content: center; 
    align-items: center;     
    width: 100%;
    max-width: 600px; 
    margin: 0 auto;
}


.profile-section {
    background-color: white;
    border-radius: 10px;
    padding: 30px;
    width: 600px;        
    height: 550px;        
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
    display: flex;
    flex-direction: column;
    justify-content: center;
}


.settings-section {
    flex: 1; 
    max-width: 48%; 
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    text-align: left;
}

.profile-section h3,
.settings-section h3 {
    text-align: center;
    margin-bottom: 20px;
}

.profile-section form div,
.settings-section form div {
    margin-bottom: 15px;
}

.profile-section label,
.settings-section label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

.profile-section input,
.settings-section input,
.settings-section select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1rem;
}

.profile-section button,
.settings-section button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.profile-section button:hover,
.settings-section button:hover {
    background-color: #0056b3;
}

/* Footer */
footer {
    display: flex;
    justify-content: space-between; 
    align-items: center;
    background-color: #004d99;
    color: white;
    padding: 15px 20px;
}

footer p {
    margin: 0;
}

.social-media {
    display: flex;
    gap: 15px; 
}

.social-media a img {
    width: 24px; 
    height: 24px; 
    transition: transform 0.3s ease;
}

.social-media a img:hover {
    transform: scale(1.2); 
}

/* Responsive stacking on small screens */
@media (max-width: 768px) {
    .account-sections-wrapper {
        flex-direction: column;
        align-items: center;
    }
}

.table-container {
    max-width: 1200px;
    margin: 50px auto;
    background-color: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    padding: 12px 15px;
    border: 1px solid #ccc;
    text-align: center;
}

th {
    background-color: #004d99;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

h3 {
    text-align: center;
    color: #004d99;
    margin-bottom: 20px;
}

.action-buttons {
    display: flex;
    gap: 10px;
    justify-content: center;
    flex-wrap: wrap;
}

.action-buttons button {
    padding: 8px 16px;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.action-buttons button:hover {
    background-color: #0056b3;
}

/* Make Update button green */
.action-buttons a button {
    background-color: #28a745;
    padding: 8px 16px;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.action-buttons a button:hover {
    background-color: #218838;
}

/* Make Delete button red */
.action-buttons form button {
    background-color: #dc3545;
    padding: 8px 16px;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.action-buttons form button:hover {
    background-color: #c82333;
}

</style>
</head>
<header>
      <nav>
        <ul class="nav-links">
          <li><a href="home.jsp">Home</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li><a href="Ridebooking.jsp">Book a Ride</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
          <li><a href="addComplaint.jsp">Complain Us</a></li>
          <li><a href="choice.jsp" class="active">Accounts</a></li>
          <li><a href="DataForm.jsp">Driver</a></li>
        </ul>
      </nav>
    </header>
<body>

<div class="table-container">
    <h3>Profile Information</h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Pickup Location</th>
            <th>Action</th>
        </tr>

        <c:forEach var="profile_informations" items="${allTransport}">
            <tr>
                <td>${profile_informations.id}</td>
                <td>${profile_informations.fullname}</td>
                <td>${profile_informations.email}</td>
                <td>${profile_informations.phone_number}</td>
                <td>${profile_informations.pickup_location}</td>
                <td>
                    <div class="action-buttons">
                        <a href="update.jsp?id=${profile_informations.id}&fullname=${profile_informations.fullname}&email=${profile_informations.email}&phone_number=${profile_informations.phone_number}&pickup_location=${profile_informations.pickup_location}">
                            <button type="button">Update</button>
                        </a>

                        <form action="DeleteServlet" method="post">
                            <input type="hidden" name="id" value="${profile_informations.id}" />
                            <button type="submit">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
