<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Responsive meta tag -->
    <title>Upcoming Events - SmartGuide</title> <!-- Your custom CSS -->
    <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
    
.flex-container {
    display: flex;
    flex-wrap: wrap; /* Allow items to wrap to the next line */
    justify-content: center; /* Center the items */
    gap: 20px; /* Space between the cards */
}

h2 {
    text-align: center; /* Centering the heading */
    color: #333;
    margin-bottom: 20px;
    font-size: 1.8rem;
}
        /* General Styles */
       body {
    font-family: Arial, sans-serif;
    ont-weight: bold;
    background-color: #ececec;
    margin: 0;
    padding: 20px;
    background-image: url('path/to/your/background-image.jpg'); /* Set your background image */
    background-size: cover; /* Cover the whole body */
    background-position: center;}
        /* Card Styles */
        .card {
            width: 300px;
            background-color: rgba(255, 255, 255, 0.9); /* White background */
            border-radius: 8px;
            border: 2px solid rgb(0, 0, 0); /* Blue border */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: transform 0.2s; /* Animation on hover */
        }
        .butt {
            background-color: rgb(240, 255, 240); /* Honeydew */
            color: #333;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            border: 2px solid #333;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-left: 20px; /* Space between <h2> and button */
        }

          .butt:hover {
            background-color: #b3ffcc; /* Slightly darker green */
        }

        /* Flexbox container */
        .inline-container {
            display: flex;
            justify-content: space-between; /* Distribute space between h2 and button */
            align-items: center;            /* Vertically center the items */
            width: 100%;                    /* Take full width of the page */
        }

        /* Center the <h2> in its available space */
        .inline-container h2 {
            flex-grow: 1;           /* Allow the <h2> to grow and take available space */
            text-align: center;     /* Center the text */
            margin: 10;              /* Remove default margins */
        }

        .card:hover {
            transform: scale(1.05); /* Slightly enlarge card on hover */
        }

        .card-text {
            font-size: 1rem;
            color: #555;
            margin: 0;
        }

        /* Button Styles */
        .btn {
            padding: 10px 15px;
            border: none;
            background-color: #007bff; /* Blue background */
            color: white;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s; /* Smooth background transition */
        }

        .btn-danger {
            background-color: #dc3545; /* Red background */
        }

        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        /* Footer Styles */
      
    </style>
</head>
<body>

<!-- Header -->
<div class="navdiv">
    <div class="logo"><a href="#"><img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Logo"></a></div>
    <nav class="navbar">
        <ul>
            <li><a href="adminhome.jsp">Home</a></li>
            <li><a href="adminmap.jsp">Site Map</a></li>
            <li><a href="GetAllServlet">Upcoming Events</a></li>
            <li><a href="GetAllServelt">Tour Listings</a></li>
            <li><a href="AdminDashboard.jsp">Booking</a></li>
            
            <li><a href="AdContactUs.jsp">Contact</a></li>
        </ul>
    </nav>
</div>

<div class="maindiv"> 
 <div class="inline-container">
    <h2>Upcoming Events</h2>
   <a href="insert.jsp" class="butt">Add New Upcoming Event</a>
    </div>
    <div class="flex-container">
        <!-- Loop through each event -->
        <c:forEach var="even" items="${eveDetails}">
            <div class="card">
                <p class="card-text">
                    <strong>Event Name:</strong> ${even.eventname} <br>
                    <strong>Location:</strong> ${even.location} <br>
                    <strong>Date:</strong> ${even.date} <br>
                    <strong>Description:</strong> ${even.description}
                </p>
                <div class="actions">
                    <a href="update.jsp?id=${even.id}&eventname=${even.eventname}&location=${even.location}&date=${even.date}&description=${even.description}" class="btn">Update</a>
                    <form action="DeleteServlet" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${even.id}">
                        <button type="button" class="btn btn-danger" onclick="if(confirm('Are you sure you want to delete this event?')) { this.form.submit(); }">Delete</button>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="top-section">
        <img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Company Logo">
        <h3>SmartGuide</h3>
        <div class="social-media-icons">
            <a href="#"><img src="img/kindpng_203618.png" alt="Facebook"></a>
            <a href="#"><img src="img/7417365_whatsapp business_whatsapp_chat_communication_icon.png" alt="WhatsApp"></a>
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
            <a href="contact.html" class="btn">Contact Us</a>
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
</footer>

</body>
</html>
