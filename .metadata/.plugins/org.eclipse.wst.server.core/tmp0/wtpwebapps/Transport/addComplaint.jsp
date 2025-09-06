<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>File Complaint</title>
    <script src="js/validation.js"></script>
     <link rel="stylesheet" href="css/styles.css">
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
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: fixed;
    color: #333;
    line-height: 1.6;
}


a {
    text-decoration: none;
    color: inherit;
}

/* Navigation */
/* Navigation */
header {
    background-color: #004d99;
    color: white;
    padding: 15px 0px;
}

nav {
    display: flex;
    justify-content: space-between; 
    align-items: center;
    max-width: 1200px; 
    margin: 0 auto; 
}

.logo-container {
    display: flex;
    align-items: center;
    gap: 10px;
}

.logo {
    width: 40px;
    height: 40px;
    border-radius: 50%;
}

.system-name {
    font-size: 1.2rem;
    font-weight: bold;
    color: white;
}

.nav-links {
    display: flex;
    gap: 40px; 
    list-style: none;
    margin: 0;
    padding: 0;
}

.nav-links li a {
    color: white;
    text-decoration: none;
    font-weight: 500;
    transition: color 0.3s;
}

.nav-links li a:hover {
    color: #ffcc00;
}

.nav-links li a.active {
    font-weight: bold; 
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
    height: 500px;       
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
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.action-buttons button:hover {
    background-color: #0056b3;
}
    </style>
</head>
<body>
<header>
      <nav>
        <div class="logo-container">
          <img src="https://marketplace.canva.com/EAF5lVrtgYg/1/0/1600w/canva-blue-and-orange-logistics-logo-rOf-eNSosdE.jpg" alt="System Logo" class="logo" />
          <span class="system-name">GoFleet</span>
        </div>
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
<h2>Complaint Form</h2>
<form action="ComplaintController" method="post" onsubmit="return validateForm()">
    <input type="hidden" name="action" value="add" />
    Name: <input type="text" name="customerName" required><br>
    Phone: <input type="text" name="phone" maxlength="10" required><br>
    Email: <input type="email" name="email" required><br>
    Date of Incident: <input type="date" name="incidentDate" required><br>
    Vehicle Type:
    <select name="vehicleType">
        <option>Tree-wheel</option>
        <option>Bike</option>
        <option>Car</option>
        <option>Van</option>
    </select><br>
    Complaint Type:<br>
    <input type="checkbox" name="complaintType" value="Rude/Unprofessional Behavior"> Rude/Unprofessional Behavior<br>
    <input type="checkbox" name="complaintType" value="Safety Concern"> Safety Concern<br>
    <input type="checkbox" name="complaintType" value="Cleanliness Issues"> Cleanliness Issues<br>
    <input type="checkbox" name="complaintType" value="Overcharging"> Overcharging<br>
    <input type="checkbox" name="complaintType" value="Route Deviation"> Route Deviation<br>
    <input type="checkbox" name="complaintType" value="Lost Item"> Lost Item<br>
    <input type="checkbox" name="complaintType" value="Discrimination"> Discrimination<br>
    <input type="checkbox" name="complaintType" value="Other"> Other: <input type="text" name="otherComplaint"><br>
    Vehicle Number Plate: <input type="text" name="vehiclePlate" required><br>
    Driver Name: <input type="text" name="driverName"><br>
    Details:<br><textarea name="details" required></textarea><br>
    <input type="submit" value="Submit Complaint">
</form>
<footer>
      <p>&copy; 2025 Online Transport System. All Rights Reserved.</p>
      <div class="social-media">
        <a href="https://facebook.com" target="_blank">
          <img src="https://logowik.com/content/uploads/images/t_672_fb_icon.jpg" alt="Facebook" />
        </a>
        <a href="https://twitter.com" target="_blank">
          <img src="https://cdn-icons-png.flaticon.com/512/124/124021.png" alt="Twitter" />
        </a>
        <a href="https://instagram.com" target="_blank">
          <img src="https://e7.pngegg.com/pngimages/722/1011/png-clipart-logo-icon-instagram-logo-instagram-logo-purple-violet-thumbnail.png" alt="Instagram" />
        </a>
      </div>
    </footer>
</body>
</html>
