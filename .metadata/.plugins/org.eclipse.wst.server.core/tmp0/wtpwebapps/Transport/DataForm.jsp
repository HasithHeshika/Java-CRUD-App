<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Driver Register</title>

<style>
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
    background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20240630/pngtree-sitting-on-bus-public-transport-details-blue-passenger-seat-image_15830791.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    color: #333;
}

/* Header Styling */
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

/* Main Container Styling */
.auth-container {
    max-width: 500px;
    width: 100%;
    background-color: white;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 8px 16px rgba(0,0,0,0.2);
    text-align: center;
    margin: 40px auto; /* Add vertical spacing */
}

/* Form Fields */
.auth-container h2 {
    font-size: 2rem;
    color: #004d99;
    margin-bottom: 25px;
}

.auth-container form div {
    margin-bottom: 15px;
    text-align: left;
}

.auth-container label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

.auth-container input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1rem;
}

.auth-container button {
    width: 100%;
    padding: 12px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background-color 0.3s ease;
    margin-top: 10px;
}

.auth-container button:hover {
    background-color: #0056b3;
}

/* Footer Styling */
footer {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #004d99;
    color: white;
    padding: 15px 20px;
    width: 100%;
    position: fixed;
    bottom: 0;
    left: 0;
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
</style>
</head>

<body>
    <!-- Header -->
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

    <!-- Main Form -->
    <div class="auth-container">
        <h2>Driver Register Form</h2>
        <form action="DriverInsertServlet" method="post">
            <div>
                <label for="name">Full Name</label>
                <input type="text" name="name" id="name" placeholder="Enter full name" required>
            </div>
            <div>
                <label for="licenseNumber">License Number</label>
                <input type="text" name="licenseNumber" id="licenseNumber" placeholder="Enter license number" required>
            </div>
            <div>
                <label for="phone">Phone</label>
                <input type="text" name="phone" id="phone" placeholder="Enter phone number" required>
            </div>
            <div>
                <label for="vehicleAssigned">Vehicle Assigned</label>
                <input type="text" name="vehicleAssigned" id="vehicleAssigned" placeholder="Enter vehicle assigned" required>
            </div>
            <div>
                <label for="email">Email Address</label>
                <input type="email" name="email" id="email" placeholder="Enter email address" required>
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="Create password" required>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>

    <!-- Footer -->
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