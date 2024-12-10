<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    // Get the ID parameter from the request
    String id = request.getParameter("id");

    if (id == null || id.isEmpty()) {
        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID is missing.");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Feedback</title>
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
		    background-image: url('https://img.freepik.com/premium-vector/world-tourism-day-background_609843-165.jpg');
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
		    padding: 8px 16px;
		    border: black;
		    border-radius: 4px;
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
   <div class="container">
    <form action="UpdateFeedbackServlet" method="post">
         <h2>Edit Feedback</h2>
        <input type="hidden" name="id" value="<%= id %>">

        <!-- Name field -->
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${feedback.name}" required><br><br>

        <!-- Email field -->
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${feedback.email}" required><br><br>

        <!-- Feedback field -->
        <label for="feedback">Feedback:</label>
        <textarea id="feedback" name="feedback" required>${feedback.feedback}</textarea><br><br>

        <!-- Submit button -->
        <input type="submit" value="Update">
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
