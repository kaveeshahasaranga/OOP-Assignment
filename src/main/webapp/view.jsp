<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submitted</title>
    <link rel="stylesheet" href="Css/feed.css">
    <link rel="stylesheet" href="Css/head&fotter.css">
    <style>
   
		body {
		    font-family: Arial, sans-serif;
		    background-color: #b0f1ed;
		    margin: 0;
		    padding: 0;
		    color: #333;
		}

		
		.container h1 {
		     text-align: center;
            color: #333;
            margin-bottom: 20px;
		}
		
		.container {
		     background-image: url('https://media.istockphoto.com/id/1398999519/photo/circular-white-chat-bubble-with-cut-out-heart-symbols-sitting-on-blue-background.jpg?b=1&s=612x612&w=0&k=20&c=HUln8bliuowoUO17r208uc1vcxVew0ANmprwQJhbxZc=');
		    background-size: cover;
		    background-position: center;
		    padding: 30px;
		    border-radius: 8px;
		    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
		    max-width: 500px;
		    width: 100%;
		    text-align: left;
		    color:black;
		    
		}
		
		.container p {
		    font-size: 1.2em;
		    line-height: 1.6;
		    margin-bottom: 15px;
		}
		
		.container form {
		    display: inline-block;
		    margin-right: 10px;
		}
		
		input[type="submit"] {
		    background-color: #6a0667;
		    color: white;
		    padding: 8px 16px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		}
		
		input[type="submit"]:hover {
		    background-color:#ac9805;
		}
    
    </style>
</head>
<body>

<div class = "navdiv">
    <div class = "logo"><a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
    <nav class = "navbar">
            <ul>
                <li><a href = "userhome.jsp">Home</a></li>
                <li><a href = "map.jsp">Site Map</a></li>
                <li><a href = "UserGetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                <li><a href = "getall">Tour Listings</a></li>
                <li><a href = "userDashboard.jsp">Booking </a></li>
                
                <li><a href = "ContactUs.jsp">Contact </a></li>
                <li><a href = "feedback.jsp">Feedback </a></li>
                

            </ul>
    </nav>
  </div>
 
    <div class="container" >
        <h1>Thank You for Your Feedback,Your thoughts are valuable to us!</h1>
        
        <!-- Reading submitted data using request.getParameter -->
        
         <c:forEach var="feedback" items="${feedbackList}">
        
         
        <p><strong>Name:</strong>${feedback.name}</p>
        <p><strong>Email:</strong>${feedback.email}</p>
        <p><strong>Feedback:</strong>${feedback.feedback}</p>
        
       
        	 <form action="edit.jsp" method="get">
                    <input type="hidden" name="id" value="${feedback.id}">
                    <input type="submit" value="Edit"  style="background-color:fuchsia;">
                </form>
                <form action="DeleteFeedbackServlet" method="post">
                    <input type="hidden" name="id" value="${feedback.id}">
                 <input type="submit" value="Delete" onclick="if(confirm('Are you sure you want to delete this Feedback?')) { this.form.submit(); }" style="background-color: olive; color: #fff; padding: 10px; border: none; border-radius: 5px; cursor: pointer;">
                </form>
        
          </c:forEach>
    </div>
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
    <div class="subtopics" style="background-color: #f2f2f2;">
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
</footer>
    
</body>
</html>