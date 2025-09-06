<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Your Ride</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * { box-sizing: border-box; }

        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            
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
        
        .main-container {
            background: url('images/pngtree-sitting-on-bus-public-transport-details-blue-passenger-seat-image_15830791.jpg') no-repeat center center fixed;
            background-size: cover;
            min-height: calc(100vh - 160px);
            padding: 40px 0;
            position: relative;
        }

       
        .main-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(255, 255, 255, 0.3);
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            position: relative; 
        }

        .booking-form {
            background-color: rgba(173, 216, 230, 0.9); 
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            width: 420px;
            backdrop-filter: blur(2px);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #333;
            font-weight: 600;
        }

        input[type="text"],
        input[type="email"],
        input[type="date"] {
            width: 100%;
            padding: 10px 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.3s;
            background-color: rgba(255, 255, 255, 0.8);
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus {
            border-color: #007bff;
            outline: none;
            background-color: white;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: #fff;
            padding: 12px;
            width: 100%;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        @media (max-width: 480px) {
            .booking-form {
                width: 90%;
                padding: 20px;
            }

            .nav-links {
                flex-direction: column;
                align-items: flex-start;
            }
        }

        /* Footer styles */
        footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #004d99;
            color: white;
            padding: 15px 20px;
            flex-wrap: wrap;
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

<div class="main-container">
    <div class="container">
        <form class="booking-form" action="InsertServlet" method="post">
            <h2>Book Your Ride</h2>

            <label for="name">Passenger Name</label>
            <input type="text" name="name" id="name" required>

            <label for="number">Contact Number</label>
            <input type="text" name="number" id="number" required>

            <label for="email">Email</label>
            <input type="email" name="email" id="email" required>

            <label for="pickup">Pickup Location</label>
            <input type="text" name="pickup" id="pickup" required>

            <label for="drop">Drop Location</label>
            <input type="text" name="drop" id="drop" required>

            <input type="submit" value="Book Now">
        </form>
    </div>
</div>

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