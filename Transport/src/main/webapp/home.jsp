<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Online Transport System - Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * { box-sizing: border-box; }
        
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            background: url('images/pngtree-sitting-on-bus-public-transport-details-blue-passenger-seat-image_15830791.jpg') no-repeat center center fixed;
            background-size: cover;
            min-height: 100vh;
        }

        /* HEADER */
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
        /* HERO */
        .hero {
            background: linear-gradient(135deg, #2980b9, #3498db);
            color: white;
            padding: 60px 20px;
            text-align: center;
            margin: 20px;
            border-radius: 10px;
        }
        .hero h1 {
            margin: 0;
            font-size: 3em;
        }
        .hero p {
            font-size: 1.2em;
        }

        /* CONTENT CARDS */
        .content {
            display: flex;
            justify-content: space-around;
            padding: 40px 20px;
            flex-wrap: wrap;
        }
        .card {
            background-color: #F0F5FF;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 280px;
            margin: 20px;
            padding: 20px;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card i {
            font-size: 50px;
            color: #2980b9;
        }
        .card h3 {
            margin: 15px 0 10px;
        }
        .card p {
            color: #555;
        }

        /* FOOTER */
        footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #004d99;
            color: white;
            padding: 15px 20px;
            margin-top: 40px;
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

<header>
    <nav>
        <div class="logo-container">
            <img src="https://marketplace.canva.com/EAF5lVrtgYg/1/0/1600w/canva-blue-and-orange-logistics-logo-rOf-eNSosdE.jpg" alt="System Logo" class="logo" />
            <span class="system-name">GoFleet</span>
        </div>
        <ul class="nav-links">
            <li><a href="home.jsp" class="active">Home</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="Ridebooking.jsp">Book a Ride</a></li>
            <li><a href="contact.jsp">Contact Us</a></li>
            <li><a href="addComplaint.jsp">Complain Us</a></li>
            <li><a href="choice.jsp" class="active">Accounts</a></li>
             <li><a href="DataForm.jsp">Driver</a></li>
            
        </ul>
    </nav>
</header>

<section class="hero">
    <h1>Fast. Reliable. Safe.</h1>
    <p>Your one-stop platform for booking transport across the country</p>
</section>

<section class="content">
    <div class="card">
        <i class="fas fa-route"></i>
        <h3>Check Routes</h3>
        <p>View all available transport routes and timings.</p>
    </div>
    <div class="card">
        <i class="fas fa-ticket-alt"></i>
        <h3>Book Tickets</h3>
        <p>Book tickets with just a few clicks, anytime, anywhere.</p>
    </div>
    <div class="card">
        <i class="fas fa-user"></i>
        <h3>User Account</h3>
        <p>Login or register to manage your bookings.</p>
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

</body>
</html>