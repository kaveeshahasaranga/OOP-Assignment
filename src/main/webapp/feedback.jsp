<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
        /* Basic styles for body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            background-image: url('https://plus.unsplash.com/premium_photo-1681223447322-46794b8cdfd5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        
        /* Ensures form is in the center */
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-grow: 1;
        }
        
     form {
		    background-image: url('https://img.freepik.com/free-vector/realistic-travel-background-with-elements_52683-77784.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1728518400&semt=ais_hybrid');
		    background-size: cover;
		    background-position: center;
		    padding: 30px;
		    border-radius: 8px;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		    max-width: 500px;
		    width: 100%;
		    text-align: left;
		    color: black; /* Ensures text is readable on image background */
}


        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #8707a1;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #d2e8ee;
        }
		.subtopics{
			 background-color:  #bfefc5;
		}
        footer {
            background-color: #083e4f;
            color: white;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    
<!-- Header part -->
<div class="navdiv">
    <div class="logo"><a href=""><img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
    <nav class="navbar">
        <ul>
            <li><a href="userhome.jsp">Home</a></li>
            <li><a href="map.jsp">Site Map</a></li>
            <li><a href="UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop-down list here-->
            <li><a href="getall">Tour Listings</a></li>
            <li><a href="userDashboard.jsp">Booking </a></li>
            <li><a href="ContactUs.jsp">Contact</a></li>
            <li><a href = "feedback.jsp">Feedback </a></li>
            
        </ul>
    </nav>
</div>

<!-- Main content with centered form -->
<div class="container">
    <form action="FeedbackServlet" method="post">
        <h2>Feedback Form</h2>
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="feedback">Feedback:</label>
        <textarea id="feedback" name="feedback" rows="4" cols="50" required></textarea>

        <input type="submit" value="Submit Feedback">
    </form>
</div>

<!-- Footer part -->
<footer>
    <div class="top-section">
        <img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Company Logo">
        <h3>SmartGuide</h3>
        <div class="social-media-icons">
            <a href="#"><img src="img/kindpng_203618.png" alt="Facebook"></a>
            <a href="#"><img src="img/7417365_whatsapp business_whatsapp_chat_communication_icon.png" alt="Twitter"></a>
            <a href="#"><img src="img/logo-instagram-png-13564.png" alt="Instagram"></a>
        </div>
    </div>
    <div style= background-color: ligh-green;>
    <div class="subtopics">
        <div class="contact-details">
            <h4>Contact Us</h4>
            <p>123 Main Street, Kaduwela</p>
            <p>Phone: 0113233656</p>
            <p>Email: SmartGuideonline@gamil.com</p>
        </div>
        <div class="newsletter">
            <h4>Newsletter</h4>
            <p>Subscribe to our newsletter for updates.</p>
            <a href="contact.html">Contact Us</a>
        </div>
        <div class="customer-links">
            <h4>Customer Links</h4>
            <ul>
                <li><a href="#">FAQ</a></li>
                <li><a href="#">Terms &amp; Conditions</a></li>
            </ul>
        </div>
    </div>
    <hr>
    <p>&copy; 2024 SmartGuide. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
