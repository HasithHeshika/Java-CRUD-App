<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String pickup_location = request.getParameter("pickup_location");
	%>

	<form action="UpdateServlet" method="post">
  <table>
  	<tr>
      <td>ID:</td>
      <td><input type="text" id="id" name="id" value="<%=id %>" readonly /></td>
    </tr>
    <tr>
      <td>Full Name:</td>
      <td><input type="text" id="fullname" name="fullname" value="<%=fullname %>" required /></td>
    </tr>
    <tr>
      <td>Email:</td>
      <td><input type="text" id="email" name="email" value="<%=email %>" required /></td>
    </tr>
    <tr>
      <td>Phone Number:</td>
      <td><input type="text" id="phone_number" name="phone_number" value="<%=phone_number %>" required /></td>
    </tr>
    <tr>
      <td>Pickup Location:</td>
      <td><input type="text" id="pickup_location" name="pickup_location" value="<%=pickup_location %>" required /></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="Submit"></td>
    </tr>
  </table>
	 </form>
</body>
</html>

 --%>
 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Information</title>
    <link rel="stylesheet" href="account-profile.css" />
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
    background-image: url('https://thumbs.dreamstime.com/b/chiang-mai-thailand-sep-woman-hand-holding-uber-ap-application-startup-page-apple-iphone-display-female-blurred-77861615.jpg');
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
	<%
		String id = request.getParameter("id");
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String phone_number = request.getParameter("phone_number");
		String pickup_location = request.getParameter("pickup_location");
	%>

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

    <main class="account-profile-container">
      <h2>My Transport Account</h2>

      <div class="account-sections-wrapper">
        <!-- User Profile Section -->
        <section class="profile-section">
          <h3>Profile Information Update</h3>
          <form id="profile-form" action="UpdateServlet" method="post">
            <div>
        <label for="id">ID:</label>
        <input type="text" id="id" name="id" value="<%=id %>" readonly />
    </div>
            <div>
              <label for="fullname">Full Name:</label>
              <input type="text" id="fullname" name="fullname" value="<%=fullname %>" pattern="[A-Za-z ]+" required />

            </div>

            <div>
              <label for="email">Email:</label>
              <input type="email" id="email" name="email" value="<%=email %>" required />
            </div>

            <div>
              <label for="phone_number">Phone Number:</label>
              <input type="tel" id="phone_number" name="phone_number" value="<%=phone_number %>" pattern="\d{10}" maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '').slice(0, 10);" required />
            </div>

            <div>
              <label for="pickup_location">Pickup Location:</label>
              <input type="text" id="pickup_location" name="pickup_location" value="<%=pickup_location %>" required />
            </div>

            <button type="submit" class="btn-primary">Update</button>
          </form>
        </section>
      </div>
    </main>

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
    <script>
  document.getElementById("fullname").addEventListener("input", function (e) {
	  this.value = this.value.replace(/[^A-Za-z ]/g, '');

  });
  
  document.querySelector('form').addEventListener('submit', function (e) {
	    const phone_number = document.getElementById('phone_number').value;
	    if (!/^\d{10}$/.test(phone_number)) {
	      alert('Please enter exactly 10 digits for the phone number.');
	      e.preventDefault();
	    }
	  });
  function validatePhoneNumber(input) {
	    // Remove non-digit characters
	    input.value = input.value.replace(/\D/g, '');

	    // Trim to 10 digits if longer
	    if (input.value.length > 10) {
	        input.value = input.value.slice(0, 10);
	    }
	}
</script>
</body>
</html>
