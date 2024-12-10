<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOUER PACKAGES</title><link rel = "stylesheet" href="Css/menustyle.css" >
<link rel="stylesheet" href="Css/Touers.css">

<!-- Bootstrap CSS CDN Link -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #bec5ca;
        margin: 0;
        padding: 20px;
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 10px;
        font-size: 2.8rem;
         margin: 3%;
    }
     h2 {
        text-align: center;
        color: #333;
        margin-bottom: 10px;
        font-size: .8rem;
    }
    .card {
        margin-bottom: 20px;
    }
    .card img {
        height: 200px;
        object-fit: cover;
    }
    .btn {
        margin-top: 10px;
    }
</style>
</head>
<body><div class = "navdiv">
      <div class = "logo"><a href = "home.html"><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
      <nav class = "navbar">
          <ul>
              <li><a href = "userhome.jsp">Home</a></li>
              <li><a href = "map.jsp">Site Map</a></li>
              <li><a href = "UserGetAllServlet">Upcoming Event</a></li> 
              <li><a href = "getall">Tour Listings</a></li>
              <li><a href = "userDashboard.jsp">Booking </a></li>
              
              <li><a href = "ContactUs.jsp">Contact </a></li>
              <li><a href = "feedback.jsp">Feedback </a></li>
              
              

          </ul>
      </nav>
  </div>

<h1>Tour Products</h1>
<div class="container">
    <div class="row">
        <!-- Loop through all the tours -->
        <c:forEach var="tours" items="${allTours}">
            <div class="col-md-4">
                <div class="card">
                    <img src="${pageContext.request.contextPath}/${tours.image}" alt="${tours.tourname}">


                    <div class="card-body">
                    
                    
                        <h5 class="card-title">${tours.tourname}</h5>
                        <p class="card-text">
                            <strong>Price: </strong>$${tours.price} <br>
                            <strong>Location: </strong>${tours.location} <br>
                            <strong>Description: </strong>${tours.description}
                        </p>
                        <a href="userDashboard.jsp" class="card__button" onclick="openPopup('myPopup1')"
      ><h2>BOOKING </h2></a>
                         
                        <!-- Actions like Update and Delete -->
                        
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<footer>
   <div class="top-section">
     <img src="images/123Red Blue Lake Mountain Outdoor Circle Logo.png" alt="Company Logo">
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
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>

</body>
</html>
