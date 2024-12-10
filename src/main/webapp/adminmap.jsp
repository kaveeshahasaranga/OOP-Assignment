<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Insert title here</title>
    
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="Css/head&fotter.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .title {
            color: #2c3e50;
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class = "navdiv">
    <div class = "logo"><a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
    <nav class = "navbar">
            <ul>
                <li><a href = "adminhome.jsp">Home</a></li>
                <li><a href = "adminmap.jsp">Site Map</a></li>
                <li><a href = "GetAllServlet">Upcoming Event</a></li> <!--Add a drop downlist here-->
                <li><a href = "GetAllServlet">Tour Listings</a></li>
                <li><a href = "AdminDashboard.jsp">Booking </a></li>
                
                <li><a href = "AdContactUs.jsp">Contact </a></li>
                
            </ul>
    </nav>
  </div>
  <div class = "maindiv">

    <h1 class="title">Getting a map</h1>
    
    <div class="container">
        <div class="d-flex justify-content-center">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4047240.598305858!2d78.06307418128131!3d7.854882614537602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2593cf65a1e9d%3A0xe13da4b400e2d38c!2sSri%20Lanka!5e0!3m2!1sen!2slk!4v1724062552648!5m2!1sen!2slk" 
            width="800" height="650" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </div>
    </div>
  <!--footer part -->

  <footer>
    <div class="top-section">
      <img src="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Company Logo">
      <h3>SmartGuide     </h3>
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
    
    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
