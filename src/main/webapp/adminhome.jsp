<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wellcome to SriLanka</title>
    
     <link rel="stylesheet" href="Css/style.css">
    <link rel="icon" href="img/123Red Blue Lake Mountain Outdoor Circle Logo.png" type="image/x-icon">
    <link rel="stylesheet" href="Css/head&fotter.css">
</head>
<body>
  <div class="background1">   <!-- Added first background image to this division  -->

    <div class = "navdiv">
      <div class = "logo"><a href = ""><img src = "img/123Red Blue Lake Mountain Outdoor Circle Logo.png"></a></div>
      <nav class = "navbar">
              <ul>
                  <li><a href = "adminhome.jsp">Home</a></li>
                  <li><a href = "adminmap.jsp">Site Map</a></li>
                  <li><a href = "GetAllServlet">Upcoming Event Details</a></li> <!--Add a drop downlist here-->
                  <li><a href = "GetAllServelt">Tour Listings Details</a></li>
                  <li><a href = "AdminDashboard.jsp">Booking </a></li>
                  
                  <li><a href = "AdContactUs.jsp">Contact  </a></li>
                  

              </ul>
      </nav>
    </div>

    <!-- First part of the home page  -->
    <div class="container1">
      <h1>Wellcome to SriLanka</h1>
      <p>Top 10 Places <br> Sri Lanka</p>
      <button onclick="location.href='GetAllServelt'">. Visit Now >> .</button>
    </div>
    
  </div>

 
-->



  <!-- Third part of the home page  -->
  <div class="background3">
    <div class="container_bg3">
      <h1>Sri Lanka's iconic places</h1>
      <p>
        Explore Sri Lanka's rich heritage and natural beauty with must-visit sites like Sigiriya Rock Fortress, the sacred Temple of the Tooth in Kandy, and the wildlife haven of Yala National Park. Each offers a unique glimpse into the island’s history, culture, and wildlife.
      </p>
    </div>
  </div>

  <!-- Fourth part of the home page -->
  <div class="background4">
    <div class="container_bg4">
      
        <div class="scroll_list">
          
          <div onclick="location.href='GetAllServelt'" class="category">
            <img src="img/gettyimages-1288288155-612x612.jpg" alt="">
            <h2>Tour listing</h2>
          </div>
          
        </div>
        
      
    </div>
  </div>

  <!-- Fifth part of the home page -->
  <div class="background5">
    <div class="bg5contents">
      <h1>More than 5000 people are using our services</h1>
      <p>Contact us via our web site & experience our amazing customer service...</p>
      <button onclick="location.href='AdContactUs.jsp'">. Contact us Details .</button>
    </div>
  </div>

  <!-- sixthh part of the home page -->
  <div class="background6">
    <div class="bg6_contents">
      <div class="bg6_header">
        <h1>4 Simple steps to Tour of Sri lanka!</h1>
      </div>
      <div class="bg5_body">
        <div class="step1">
          Set Date & Location
        </div>
        <div class="step2">
          Choose a Tour listing
        </div>
        <div class="step3">
          Make a reservation
        </div>
        <div class="step4">
          Enjoy your Tour
        </div>
      </div>
    </div>
  </div>

  

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
    
     <li><a href = "login.jsp">LogOut</a></li> 
      <li><a href="adminterm.jsp">Terms &amp; Conditions</a></li>
    </ul>
  </div>
  </div>
  <hr>
  <p>&copy; 2024 SmartGuide. All rights reserved.</p>
</footer>
</body>
</html>