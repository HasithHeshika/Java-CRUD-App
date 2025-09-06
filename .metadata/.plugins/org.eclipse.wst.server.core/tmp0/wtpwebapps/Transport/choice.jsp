<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Accounts - Online Transport System</title>
    <link rel="stylesheet" href="Acoount.css" />
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
    background-image: url('https://us.123rf.com/450wm/colorfuelstudio/colorfuelstudio2001/colorfuelstudio200100259/138510894-school-cute-activity-teacher-teach-vector-illustration.jpg?ver=6'); /* Replace with your image path */
    background-size: cover; 
    background-repeat: no-repeat; 
    background-position: center; 
    color: #333;
    line-height: 1.0;
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

/* Accounts Section */
.accounts-section {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: calc(100vh - 100px); 
    text-align: center;
}

.accounts-section h2 {
    margin-bottom: 20px;
    font-size: 2rem;
    color: #004d99;
}

.accounts-section p {
    font-size: 1rem;
    color: #333;
    margin-bottom: 30px;
}

/* Profiles Section Styling */
.services-section {
    padding: 60px 0;
    background-color: #f9f9f9;
}

.services-section h1 {
    text-align: center;
    font-size: 2.5rem;
    color: #007bff;
    margin-bottom: 40px;
}

.service-card {
    background: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

.service-card h2 {
    color: #007bff;
    margin-bottom: 15px;
    display: flex;
    align-items: center;
    gap: 10px;
}

.service-card p {
    margin-bottom: 20px;
    color: #555;
}

.learn-more-btn {
    display: inline-block;
    background: #007bff;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: 500;
    transition: background 0.3s;
}

.learn-more-btn:hover {
    background: #0056b3;
}

.learn-more-btn i {
    margin-left: 5px;
}

.divider {
    border: 1px dashed #ddd;
    margin: 30px 0;
}

/* Profiles Wrapper */
.profiles-wrapper {
    display: flex;
    justify-content: space-between; 
    align-items: flex-start; 
    gap: 20px; 
    max-width: 1200px; 
    margin: 0 auto; 
    padding: 20px;
}

.profile-card {
    flex: 1; 
    max-width: 48%; 
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.profile-card h2 {
    font-size: 2rem;
    color: #007bff;
    margin-bottom: 15px;
}

.profile-card p {
    font-size: 1rem;
    color: #555;
    margin-bottom: 20px;
}

.profile-card a.learn-more-btn {
    display: inline-block;
    background: #007bff;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: 500;
    transition: background 0.3s;
}

.profile-card a.learn-more-btn:hover {
    background: #0056b3;
}

.profile-card img.profile-image {
    width: 100%; 
    max-width: 150px; 
    height: auto; 
    margin-bottom: 15px; 
    border-radius: 50%; 
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); 
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
  <body style="background-color: #f0f8ff; background-image: url('https://w7.pngwing.com/pngs/929/974/png-transparent-blue-stripe-screenshot-blue-sky-daytime-sky-blue-background-blue-angle-other-thumbnail.png'); background-size: cover; background-repeat: no-repeat; background-position: center;">
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

    <section class="accounts-section">
      <h2>Account Management</h2>
      <p><b> your transport account or create a new one below.</b></p>

      <div class="profiles-wrapper">
        <!-- Login Section -->
        <div class="profile-card">
          <h2><i class="fas fa-user"></i> Login</h2>
          <img src="https://img.freepik.com/premium-vector/secure-login-form-page-with-password-computer-padlock-3d-vector-icon-cartoon-minimal-style_365941-1119.jpg?semt=ais_hybrid&w=740" alt="Login" class="profile-image" />
          <p>Log in to manage your account, view your ride history, and update your payment methods. Stay connected with your travel needs.</p>
          <a href="login.jsp" class="learn-more-btn">Learn More <i class="fas fa-arrow-right"></i></a>
        </div>

        <!-- Sign Up Section -->
        <div class="profile-card">
          <h2><i class="fas fa-id-card-alt"></i> Sign Up</h2>
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaQQe0GgVxKpCBL_qgoKiqLHpUZUszBlzks_a3392F0wbCTXGnbCu69ASRZRUlaDLZFbM&usqp=CAU" alt="Sign Up" class="profile-image" />
          <p>Create a new account to join our platform. Whether you're a passenger or a driver, enjoy seamless access to our services.</p>
          <a href="sign_up.jsp" class="learn-more-btn">Learn More <i class="fas fa-arrow-right"></i></a>
        </div>
      </div>
    </section>

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

    <script src="api.js"></script>
    <script src="auth.js"></script>
    <script>
      if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", updateNavigation);
      } else {
        updateNavigation();
      }
    </script>
  </body>
</html>
