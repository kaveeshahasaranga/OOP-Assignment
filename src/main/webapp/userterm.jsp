<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Terms and Conditions</title>
     <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
       body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
      background-image: url('https://plus.unsplash.com/premium_photo-1681223447322-46794b8cdfd5?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
    margin: 0;
    padding: 0;
		}
		
		
		.container {
		    width: 60%;
		    margin: 50px auto;
		    background-color: white;
		    padding: 30px;
		    border-radius: 10px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		
		h1{
			text-align: center;
			  color: #333;
		} 
		h2 {
		    color: #333;
		}
		
		ul {
		    list-style-type: square;
		}
		
		.actions {
		    margin-top: 20px;
		}
		
		input[type="submit"] {
		    cursor: pointer;
		}
		
		a {
		    color: red;
		    text-decoration: none;
		}
		
		        
    </style>
</head>
<body>

<div class = "navdiv">
    <div class = "logo">
    <a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a>
    </div>
    <nav class = "navbar">
            <ul>
                <li><a href = "userhome.jsp">Home</a></li>
                  <li><a href = "map.jsp">Site Map</a></li>
                  <li><a href = "UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                  <li><a href = "getall">Tour Listings</a></li>
                  <li><a href = "userDashboard.jsp">Booking</a></li>
                  
                  <li><a href = "ContactUs.jsp">Contact </a></li>
                  <li><a href = "feedback.jsp">Feedback </a></li>

            </ul>
    </nav>
  </div>

<div class="container">
        <h1>Terms and Conditions</h1>

        <p>Welcome to the Online Tour Guide System! Please read these terms and conditions carefully before using our services.</p>

        <h2>1. Agreement to Terms</h2>
        <p>By accessing or using our website, you agree to be bound by these terms. If you do not agree to all of these terms, you must not use the service.</p>

        <h2>2. Use of Services</h2>
        <p>Our services are provided for personal and non-commercial use only. You agree not to misuse the services provided by the Online Tour Guide System.</p>

        <h2>3. User Responsibilities</h2>
        <ul>
            <li>You must provide accurate information when creating an account or making a booking.</li>
            <li>Any misuse of the platform may result in the termination of your access to the system.</li>
            <li>You are responsible for maintaining the confidentiality of your account login credentials.</li>
        </ul>

        <h2>4. Payment and Cancellation</h2>
        <p>All payments must be made through the provided payment methods. Cancellations are subject to the terms mentioned at the time of booking.</p>

        <h2>5. Limitation of Liability</h2>
        <p>The Online Tour Guide System is not liable for any direct, indirect, or incidental damages arising from the use of our services.</p>

        <h2>6. Changes to Terms</h2>
        <p>We reserve the right to modify these terms at any time. The updated terms will be posted on this page, and it is your responsibility to review them periodically.</p>

        <h2>7. Governing Law</h2>
        <p>These terms are governed by the laws of [Country/State], and any disputes will be resolved in accordance with those laws.</p>

        <div class="actions">
            <form action="userhome.jsp" method="get">
                <input type="checkbox" name="acceptTerms" required> I agree to the Terms and Conditions<br><br>
                <input type="submit" value="Accept & Continue" style="background-color: green; color: white; padding: 10px; border: none; border-radius: 5px;">
            </form>
            <a href="userhome.jsp" style="display: inline-block; margin-top: 10px;">Cancel</a>
        </div>
    </div>
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
    <div class="subtopics">
        <div class="contact-details">
            <h4>Contact Us</h4>
            <p>123 Main Street, Kaduwela</p>
            <p>Phone: 0113233656</p>
            <p>Email: SmartGuideonline@gmail.com</p>
        </div>
        <div class="newsletter">
            <h4>Newsletter</h4>
            <p>Subscribe to our newsletter for updates.</p>
            <a href="contact.html">Contact Us</a>
        </div>
        <div class="customer-links">
            <h4>Customer Links</h4>
            <ul>
                
                <li><a href="userhome.jsp">Terms &amp; Conditions</a></li>
            </ul>
        </div>
    </div>
    <hr>
    <p>&copy; 2024 SmartGuide. All rights reserved.</p>
</footer>
</body>
</html>