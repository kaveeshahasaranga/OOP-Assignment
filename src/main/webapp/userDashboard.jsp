<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotels</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f4f4;
            --card-background: #ffffff;
            --text-color: #333333;
            --text-light: #777777;
            --star-color: #f39c12;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: var(--primary-color);
        }

        .hotel-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }

        .hotel-card {
            background-color: var(--card-background);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .hotel-card:hover {
            transform: translateY(-5px);
        }

        .hotel-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .hotel-details {
            padding: 20px;
        }

        .hotel-name {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 10px;
            color: var(--primary-color);
        }

        .hotel-description {
            font-size: 0.9rem;
            color: var(--text-light);
            margin-bottom: 15px;
        }

        .hotel-rating {
            font-size: 1rem;
            color: var(--text-color);
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .star-rating {
            display: inline-block;
            font-size: 1.2rem;
            color: var(--star-color);
            position: relative;
            margin-right: 5px;
        }

        .star-rating::before {
            
            letter-spacing: 3px;
        }

        .star-rating span {
            position: absolute;
            top: 0;
            left: 0;
            overflow: hidden;
            white-space: nowrap;
        }

        .star-rating span::before {
            content: "★★★★★";
            letter-spacing: 3px;
        }

        .book-btn {
            display: inline-block;
            background-color: var(--secondary-color);
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .book-btn:hover {
            background-color: #27ae60;
        }

        @media (max-width: 768px) {
            .hotel-grid {
                grid-template-columns: 1fr;
            }
        }
        
         /* Modal styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Could be more or less, depending on screen size */
            border-radius: 5px;
            text-align: center;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /* navigation bar*/
.navdiv{
    width: 100%;
    height: 70px;
    top: 0;
    left: 0;
    display:flex;
    align-items: center;
    justify-content: space-between;
    background-color:rgb(240, 255, 240) ;
}

.logo{
    top: 10%;
}

.logo img{

    width : 115px;
    height : 115px;
    margin-top: 2%;
    margin-left: 15%;
}


.navbar li{
    list-style: none;
    background-color:transparent ;
    padding: 0px;
    margin : 0px;
    overflow: hidden;
    float:left;
}

.navbar a{
    color: black;
    text-decoration: none;
    padding: 15px;
    display: inline-block;
    text-align: center;
}

.navbar li:hover{
    background-color: #96cca7;
    color:white;
}


.search-icon{
    color: rgb(113, 110, 110);
    width: 25px;
    height: 25px;
}



.button {
  display: inline-block;
  background-color: #8dcca1;
  color: white;
  font-family: 'Cinzel';
  font-weight: bold;
  text-align: center;
  padding: 7px 12px;
  margin-left: 10px;
  border-radius: 12px;
  text-decoration: none; /* Remove underline from links */
  transition: box-shadow 0.25s, border-radius 0.25s;
  width: 100px; /* Set a fixed width */
}

.button:hover {
  box-shadow: 0 0 8px rgb(132, 158, 136);
  border-radius: 20px;
  padding: 10px 15px; /* Ensure padding remains consistent */
}

@media screen and (max-width: 768px) {
  .button {
      width: auto; /* Make it responsive for smaller screens */
      padding: 8px 12px; /* Adjust padding for smaller devices */
  }
}


.maindiv{
    width: 100%;
    height: 1000px;
    top: 100px;

}






/*footer part*/


footer {
    background-color: #f2f2f2;
    padding: 6px;
    height: 50px;
  }
  
  .top-section {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 20px;
  }
  
  .top-section img {
    width: 60px;
    height: 60px;
  }
  
  .top-section h3 {
    margin-left: 10px;
  }
  
  .social-media-icons a {
    margin-right: 5px;
  }
  
  .social-media-icons img {
    width: 20px;
    height: 20px;
  }

  .subtopics{
    display: flex;
    gap: 20%;
  }
  
  .contact-details h4 {
    margin-bottom: 10px;
  }
  
  .newsletter h4, .customer-links h4 {
    margin-bottom: 10px;
  }
  
  hr {
    margin-top: 20px;
    margin-bottom: 20px;
  }
  
  footer p {
    font-size: 14px;
    color: #888;
  }
  
  footer a {
    text-decoration: none;
    color: #333;
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
    <div class="container">
        <h1>Available Hotels</h1>

        <div class="hotel-grid">
            <div class="hotel-card">
                <img src="img/room.png" alt="Hotel Sunrise" class="hotel-image">
                <div class="hotel-details">
                    <div class="hotel-name">Hotel Sunrise</div>
                    <div class="hotel-description">A beautiful seaside hotel offering stunning views of the sunrise. Perfect for a relaxing getaway.</div>
                    <div class="hotel-rating">
                        <div class="star-rating">
                            <span style="width: 90%"></span>
                        </div>
                        Ratings: 4.5
                    </div>
                    <a href="bookingForm.jsp?hotelId=1" class="book-btn">Book Now</a>
                </div>
            </div>

            <div class="hotel-card">
                <img src="img/pool.png" alt="Mountain Lodge" class="hotel-image">
                <div class="hotel-details">
                    <div class="hotel-name">Mountain Lodge</div>
                    <div class="hotel-description">Nestled in the mountains, this lodge provides a peaceful escape with breathtaking natural surroundings.</div>
                    <div class="hotel-rating">
                        <div class="star-rating">
                            <span style="width: 84%"></span>
                        </div>
                        Ratings: 4.2
                    </div>
                    <a href="bookingForm.jsp?hotelId=2" class="book-btn">Book Now</a>
                </div>
            </div>

            <div class="hotel-card">
                <img src="img/hotel.png" alt="City Inn" class="hotel-image">
                <div class="hotel-details">
                    <div class="hotel-name">City Inn</div>
                    <div class="hotel-description">Located in the heart of the city, this modern hotel is ideal for business and leisure travelers alike.</div>
                    <div class="hotel-rating">
                        <div class="star-rating">
                            <span style="width: 80%"></span>
                        </div>
                        Ratings: 4.0
                    </div>
                    <a href="bookingForm.jsp?hotelId=3" class="book-btn">Book Now</a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Modal structure -->
    <div id="successModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p id="successMessage"></p>
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
    
     <script>
        // Check if a success message exists
        <% 
            String message = (String) session.getAttribute("message");
            if (message != null) { 
        %>
            document.getElementById('successMessage').innerText = "<%= message %>";
            document.getElementById('successModal').style.display = 'block';
        <% 
            session.removeAttribute("message"); 
            } 
        %>

        // Get the modal
        var modal = document.getElementById("successModal");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>