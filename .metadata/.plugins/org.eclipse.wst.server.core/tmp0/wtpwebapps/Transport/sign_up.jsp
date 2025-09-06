<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up - Online Transport System</title>
    <link rel="stylesheet" href="transport-styles.css" />
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
    background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20240630/pngtree-sitting-on-bus-public-transport-details-blue-passenger-seat-image_15830791.jpg'); /* Optional: Add a background image */
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
.auth-container {
    max-width: 500px; 
    margin: 50px auto;
    padding: 50px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.auth-container h2 {
    font-size: 2rem;
    color: #004d99;
    margin-bottom: 20px;
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

.auth-container select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1rem;
    background-color: white;
    color: #333;
    appearance: none; 
    -webkit-appearance: none; 
    -moz-appearance: none;
    cursor: pointer;
}

.auth-container select:focus {
    outline: none;
    border-color: #007bff; 
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

.auth-container button {
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

.auth-container button:hover {
    background-color: #0056b3;
}

.auth-container p {
    margin-top: 15px;
    font-size: 0.9rem;
}

.auth-container p a {
    color: #007bff;
    text-decoration: underline;
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

/* About Section */
.about-content {
    display: flex;
    align-items: center; 
    gap: 20px; 
}

.about-content img {
    max-width: 50%; 
    border-radius: 10px; 
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); 
}

.about-content p {
    flex: 1; 
    font-size: 1.4rem;
    line-height: 1.6;
    color: #333;
}

.about {
    display: flex;
    flex-direction: column;
    justify-content:rightS; 
    align-items: right; 
    min-height: calc(100vh - 100px); 
    text-align: center; 
    padding: 20px; 
}

.about h2 {
    font-size: 2.5rem;
    color: #004d99;
    margin-bottom: 20px;
}

/* Contact Section */
.contact-wrapper {
    display: flex;
    justify-content: center; 
    align-items: center; 
    min-height: calc(100vh - 100px); 
    padding: 10px;
}

.contact {
    max-width: 500px; 
    margin: 0 auto;
    padding: 20px; 
    background-color: white;
    border-radius: 30px; 
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); 
    text-align: center;
}

.contact h2 {
    font-size: 2rem;
    color: #004d99;
    margin-bottom: 20px;
}

.contact form div {
    margin-bottom: 15px;
    text-align: left;
}

.contact label {
    display: block;
    font-weight: bold;
    margin-bottom: 5px;
}

.contact input,
.contact textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 1rem;
}

.contact textarea {
    resize: none; 
    height: 60px; 
}

.contact button {
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

.contact button:hover {
    background-color: #0056b3;
}

/* Mission Box */
.mission-box {
    background-color: #f0f8ff; 
    padding: 20px;
    border-radius: 10px; 
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); 
    color: #004d99; 
    text-align: center;
    margin-top: 20px;
}

.mission-box h2 {
    color: #6f30a3;
    font-size: 1.5rem;
    margin-bottom: 10px;
}

.mission-box p {
    color: #333; 
    font-size: 1.2rem;
    line-height: 1.1;
}

/* Responsive */
@media (max-width: 600px) {
    .nav-links {
        flex-direction: column;
        gap: 15px;
    }

    .btn-primary {
        width: 80%;
        margin: 10px auto;
    }
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

    <main>
      <section class="auth-container">
  <h2>Create an Account</h2>
  <form id="signupForm">
    <div class="input-group">
      <label for="fullName">Full Name</label>
      <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required />
    </div>
    <div class="input-group">
      <label for="email">Email Address</label>
      <input type="email" id="email" name="email" placeholder="Enter your email" required />
    </div>
    <div class="input-group">
      <label for="country">Country</label>
      <select id="country" name="country" required>
        <option value="" disabled selected>Select your country</option>
        <option value="USA">United States</option>
        <option value="UK">United Kingdom</option>
        <option value="Sri Lanka">Sri Lanka</option>
        <option value="Canada">Canada</option>
        <option value="Australia">Australia</option>
        <option value="India">India</option>
        <option value="Other">Other</option>
      </select>
    </div>
    <div class="input-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Create a password" required />
    </div>
    <div class="input-group">
      <label for="confirmPassword">Confirm Password</label>
      <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required />
    </div>
    <button type="submit" class="btn-primary">Sign Up</button>
  </form>
  <p class="switch-link">Already have an account? <a href="login.jsp">Login Here</a></p>
</section>
</main>

<script>
  // JavaScript to handle form submission and save data dynamically
  document.getElementById("signupForm").addEventListener("submit", function (event) {
    event.preventDefault(); // Prevent form from submitting normally

    // Get form values
    const fullName = document.getElementById("fullName").value;
    const email = document.getElementById("email").value;
    const country = document.getElementById("country").value;
    const password = document.getElementById("password").value;
    const confirmPassword = document.getElementById("confirmPassword").value;

    // Validate passwords match
    if (password !== confirmPassword) {
      alert("Passwords do not match!");
      return;
    }

    // Save data to localStorage
    const userData = {
      fullName: fullName,
      email: email,
      country: country,
      password: password,
    };

    localStorage.setItem("userData", JSON.stringify(userData));

    // Redirect to account profile page
    window.location.href = "Accounts.jsp";
  });
</script>
  </body>
</html>
